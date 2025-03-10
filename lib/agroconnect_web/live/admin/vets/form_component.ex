defmodule AgroconnectWeb.Admin.VetsLive.FormComponent do
  use AgroconnectWeb, :live_component

  alias Agroconnect.Account.Users

  @impl true
  def render(assigns) do
    ~H"""
    <div>
      <.header>
        {@title}
      </.header>

      <.simple_form
        for={@form}
        id="user-form"
        phx-target={@myself}
        phx-change="validate"
        phx-submit="save"
      >
        <.input type="text" label="Name" field={@form[:name]} />
        <.input type="text" label="Email" field={@form[:email]} />
        <.input type="select" label="Role" field={@form[:role]} options={[{"Admin", "admin"}]} />
        <.input type="checkbox" label="Active" field={@form[:active]} />

        <:actions>
          <.button phx-disable-with="Saving...">Save Vet</.button>
        </:actions>
      </.simple_form>
    </div>
    """
  end

  @impl true
  def update(%{user: user} = assigns, socket) do
    {:ok,
     socket
     |> assign(assigns)
     |> assign_new(:form, fn ->
       to_form(Users.change_user(user))
     end)}
  end

  @impl true
  def handle_event("validate", %{"user" => user_params}, socket) do
    changeset = Users.change_user(socket.assigns.user, user_params)
    {:noreply, assign(socket, form: to_form(changeset, action: :validate))}
  end

  def handle_event("save", %{"user" => user_params}, socket) do
    save_user(socket, socket.assigns.action, user_params)
  end

  defp save_user(socket, :edit, user_params) do
    case Users.update_user(socket.assigns.user, user_params) do
      {:ok, user} ->
        notify_parent({:saved, user})

        {:noreply,
         socket
         |> put_flash(:info, "vet updated successfully")
         |> push_patch(to: socket.assigns.patch)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, form: to_form(changeset))}
    end
  end

  defp save_user(socket, :new, user_params) do
    user_params =
      user_params
      |> Map.put("hashed_password", Bcrypt.hash_pwd_salt("password"))

    case Users.create_user(user_params) do
      {:ok, _user} ->
        {:noreply,
         socket
         |> put_flash(:info, "Vet created successfully")
         |> push_patch(to: socket.assigns.patch)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, form: to_form(changeset))}
    end
  end

  defp notify_parent(msg), do: send(self(), {__MODULE__, msg})
end

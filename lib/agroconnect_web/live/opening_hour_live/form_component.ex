defmodule AgroconnectWeb.OpeningHourLive.FormComponent do
  use AgroconnectWeb, :live_component

  alias Agroconnect.OpeningHours

  @impl true
  def render(assigns) do
    ~H"""
    <div>
      <.header>
        {@title}
        <:subtitle>Use this form to manage opening_hour records in your database.</:subtitle>
      </.header>

      <.simple_form
        for={@form}
        id="opening_hour-form"
        phx-target={@myself}
        phx-change="validate"
        phx-submit="save"
      >
        <.input field={@form[:day_of_week]} type="number" label="Day of week" />
        <.input field={@form[:start_time]} type="time" label="Start time" />
        <.input field={@form[:end_time]} type="time" label="End time" />
        <:actions>
          <.button phx-disable-with="Saving...">Save Opening hour</.button>
        </:actions>
      </.simple_form>
    </div>
    """
  end

  @impl true
  def update(%{opening_hour: opening_hour} = assigns, socket) do
    {:ok,
     socket
     |> assign(assigns)
     |> assign_new(:form, fn ->
       to_form(OpeningHours.change_opening_hour(opening_hour))
     end)}
  end

  @impl true
  def handle_event("validate", %{"opening_hour" => opening_hour_params}, socket) do
    changeset = OpeningHours.change_opening_hour(socket.assigns.opening_hour, opening_hour_params)
    {:noreply, assign(socket, form: to_form(changeset, action: :validate))}
  end

  def handle_event("save", %{"opening_hour" => opening_hour_params}, socket) do
    save_opening_hour(socket, socket.assigns.action, opening_hour_params)
  end

  defp save_opening_hour(socket, :edit, opening_hour_params) do
    case OpeningHours.update_opening_hour(socket.assigns.opening_hour, opening_hour_params) do
      {:ok, opening_hour} ->
        notify_parent({:saved, opening_hour})

        {:noreply,
         socket
         |> put_flash(:info, "Opening hour updated successfully")
         |> push_patch(to: socket.assigns.patch)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, form: to_form(changeset))}
    end
  end

  defp save_opening_hour(socket, :new, opening_hour_params) do
    case OpeningHours.create_opening_hour(opening_hour_params) do
      {:ok, opening_hour} ->
        notify_parent({:saved, opening_hour})

        {:noreply,
         socket
         |> put_flash(:info, "Opening hour created successfully")
         |> push_patch(to: socket.assigns.patch)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, form: to_form(changeset))}
    end
  end

  defp notify_parent(msg), do: send(self(), {__MODULE__, msg})
end

defmodule AgroconnectWeb.UserRegistrationLive do
  use AgroconnectWeb, :register_live_view

  alias Agroconnect.Account.User
  alias Agroconnect.Account.Users

  def render(assigns) do
    ~H"""
    <div class="mx-auto max-w-xl">
      <.header class="text-center space-y-2">
        <h2 class="text-3xl font-extrabold text-transparent bg-clip-text bg-gradient-to-r from-emerald-600 to-emerald-800 drop-shadow-sm mb-4">
          Register for an Users
        </h2>
        <p class="text-gray-600">
          Already registered?
          <.link
            navigate={~p"/users/login"}
            class="font-semibold text-emerald-600 hover:text-emerald-700"
          >
            Log in
          </.link>
          to your Users now.
        </p>
      </.header>

      <.simple_form
        for={@form}
        id="registration_form"
        phx-submit="save"
        phx-change="validate"
        phx-trigger-action={@trigger_submit}
        action={~p"/users/log_in?_action=registered"}
        method="post"
      >
        <.error :if={@check_errors}>
          Oops, something went wrong! Please check the errors below.
        </.error>

        <div class="flex space-x-4">
          <.input
            field={@form[:first_name]}
            type="text"
            label="First Name"
            placeholder="Enter first name"
            required
            class="w-full"
          />

          <.input
            field={@form[:last_name]}
            type="text"
            label="Last Name"
            placeholder="Enter last name"
            required
            class="w-full"
          />
        </div>

        <.input
          field={@form[:email]}
          type="email"
          label="Email"
          placeholder="Enter your email address"
          required
        />

        <.input
          field={@form[:password]}
          type="password"
          label="Password"
          placeholder="Create a strong password"
          required
        />

        <.input
          field={@form[:password_confirmation]}
          type="password"
          label="Confirm Password"
          placeholder="Repeat your password"
          required
        />

        <:actions>
          <.button
            phx-disable-with="Creating Users..."
            class="w-full bg-emerald-600 text-white hover:bg-emerald-700"
          >
            Create an Users
          </.button>
        </:actions>
      </.simple_form>

      <p class="text-center text-sm mt-4 text-gray-600">
        By creating an Users, you agree to our
        <.link href="#" class="text-emerald-600 hover:text-emerald-700 font-semibold">
          Terms of Service
        </.link>
        and
        <.link href="#" class="text-emerald-600 hover:text-emerald-700 font-semibold">
          Privacy Policy
        </.link>
      </p>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    changeset = Users.change_user_registration(%User{})

    socket =
      socket
      |> assign(trigger_submit: false, check_errors: false)
      |> assign_form(changeset)

    {:ok, socket, temporary_assigns: [form: nil]}
  end

  def handle_event("save", %{"user" => user_params}, socket) do
    case Users.register_user(user_params) do
      {:ok, user} ->
        {:ok, _} =
          Users.deliver_user_confirmation_instructions(
            user,
            &url(~p"/users/confirm/#{&1}")
          )

        changeset = Users.change_user_registration(user)
        {:noreply, socket |> assign(trigger_submit: true) |> assign_form(changeset)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, socket |> assign(check_errors: true) |> assign_form(changeset)}
    end
  end

  def handle_event("validate", %{"user" => user_params}, socket) do
    changeset = Users.change_user_registration(%User{}, user_params)
    {:noreply, assign_form(socket, Map.put(changeset, :action, :validate))}
  end

  defp assign_form(socket, %Ecto.Changeset{} = changeset) do
    form = to_form(changeset, as: "user")

    if changeset.valid? do
      assign(socket, form: form, check_errors: false)
    else
      assign(socket, form: form)
    end
  end
end

defmodule AgroconnectWeb.UserForgotPasswordLive do
  use AgroconnectWeb, :login_live_view

  alias Agroconnect.Account.Users

  def render(assigns) do
    ~H"""
    <div class="mx-auto max-w-lg">
      <.header class="text-center space-y-2">
        <h2 class="text-2xl font-extrabold text-transparent bg-clip-text bg-gradient-to-r from-emerald-600 to-emerald-800 drop-shadow-sm mb-4">
          Forgot your password?
        </h2>
        <p class="text-gray-600">We'll send a password reset link to your inbox</p>
      </.header>

      <.simple_form for={@form} id="reset_password_form" phx-submit="send_email">
        <.input field={@form[:email]} type="email" placeholder="Email" required />
        <:actions>
          <.button
            phx-disable-with="Sending..."
            class="w-full bg-emerald-600 text-white hover:bg-emerald-700"
          >
            Send password reset instructions
          </.button>
        </:actions>
      </.simple_form>
      <p class="text-center text-sm mt-4">
        <.link
          href={~p"/users/register"}
          class="text-emerald-600 hover:text-emerald-700 font-semibold"
        >
          Register
        </.link>
        |
        <.link href={~p"/users/login"} class="text-emerald-600 hover:text-emerald-700 font-semibold">
          Log in
        </.link>
      </p>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, form: to_form(%{}, as: "user"))}
  end

  def handle_event("send_email", %{"user" => %{"email" => email}}, socket) do
    if user = Users.get_user_by_email(email) do
      Users.deliver_user_reset_password_instructions(
        user,
        &url(~p"/users/reset_password/#{&1}")
      )
    end

    info =
      "If your email is in our system, you will receive instructions to reset your password shortly."

    {:noreply,
     socket
     |> put_flash(:info, info)
     |> redirect(to: ~p"/")}
  end
end

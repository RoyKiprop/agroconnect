defmodule AgroconnectWeb.UserLoginLive do
  use AgroconnectWeb, :login_live_view

  def render(assigns) do
    ~H"""
    <div class="mx-auto max-w-xl">
      <.header class="text-center space-y-2">
        <h2 class="text-2xl md:text-4xl font-extrabold text-transparent bg-clip-text bg-gradient-to-r from-emerald-600 to-emerald-800 drop-shadow-sm mb-4">
          Welcome To AggroConnect
        </h2>
        <p class="text-gray-600">Log in to account</p>
      </.header>

      <.simple_form for={@form} id="login_form" action={~p"/users/log_in"} phx-update="ignore">
        <.input field={@form[:email]} type="email" label="Email" required />
        <.input field={@form[:password]} type="password" label="Password" required />

        <:actions>
          <.input field={@form[:remember_me]} type="checkbox" label="Keep me logged in" />
          <.link
            href={~p"/users/reset_password"}
            class="text-sm font-semibold text-emerald-600 hover:text-emerald-700"
          >
            Forgot your password?
          </.link>
        </:actions>
        <:actions>
          <.button
            phx-disable-with="Logging in..."
            class="w-full bg-emerald-600 text-white hover:bg-emerald-700"
          >
            Log in <span aria-hidden="true">→</span>
          </.button>
        </:actions>
      </.simple_form>
      <div class="mt-4 text-center flex justify-center itmes-center space-x-2">
        <.link href={~p"/"} class="text-sm mr-2 font-semibold text-emerald-600 hover:text-emerald-700">
          Back to Home
        </.link>
        |
        <.link
          href={~p"/users/register"}
          class="text-sm font-semibold text-emerald-600 hover:text-emerald-700"
        >
          Register
        </.link>
      </div>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    email = Phoenix.Flash.get(socket.assigns.flash, :email)
    form = to_form(%{"email" => email}, as: "user")
    {:ok, assign(socket, form: form), temporary_assigns: [form: form]}
  end
end

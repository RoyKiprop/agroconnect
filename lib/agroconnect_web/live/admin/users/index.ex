defmodule AgroconnectWeb.Admin.UsersLive.Index do
  use AgroconnectWeb, :admin_live_view
  alias Agroconnect.Account.User
  alias Agroconnect.Account.Users

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(page_title: "Listing Users")
     |> stream(:users, Users.list_users())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit user")
    |> assign(:user, Users.get_user!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New user")
    |> assign(:user, %User{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Users")
    |> assign(:role, nil)
  end
end

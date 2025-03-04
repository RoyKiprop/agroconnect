defmodule AgroconnectWeb.Users.Vets do
  use AgroconnectWeb, :user_live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>Available Vets</h1>
    """
  end
end

defmodule AgroconnectWeb.Users.Contacts do
  use AgroconnectWeb, :user_live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>Contacts</h1>
    """
  end
end

defmodule AgroconnectWeb.Users.Appointments do
  use AgroconnectWeb, :user_live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>My Appointments</h1>
    """
  end
end

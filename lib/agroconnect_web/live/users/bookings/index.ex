defmodule AgroconnectWeb.Users.Bookings do
  use AgroconnectWeb, :user_live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <hi>Bookings</hi>
    """
  end
end

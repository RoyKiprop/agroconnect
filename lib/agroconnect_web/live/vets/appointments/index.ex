defmodule AgroconnectWeb.Vets.Appointments do
  use AgroconnectWeb, :vet_live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>Bookings</h1>
    """
  end
end

defmodule AgroconnectWeb.VetDashboardLive.Index do
  use AgroconnectWeb, :vet_live_view

  def mount_(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>Vet Dashboard</h1>
    """
  end
end

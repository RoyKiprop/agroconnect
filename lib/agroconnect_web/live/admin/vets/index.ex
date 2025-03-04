defmodule AgroconnectWeb.Admin.VetsLive do
  use AgroconnectWeb, :admin_live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>Vets</h1>
    """
  end
end

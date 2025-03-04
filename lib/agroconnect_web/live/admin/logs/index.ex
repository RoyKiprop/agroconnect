defmodule AgroconnectWeb.Admin.Logs do
  use AgroconnectWeb, :admin_live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>Logs</h1>
    """
  end
end

defmodule AgroconnectWeb.Admin.Roles do
  use AgroconnectWeb, :admin_live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>Roles</h1>
    """
  end
end

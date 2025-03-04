defmodule AgroconnectWeb.Users.Ai do
  use AgroconnectWeb, :user_live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <hi>Upload Image</hi>
    """
  end
end

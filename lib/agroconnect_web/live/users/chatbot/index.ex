defmodule AgroconnectWeb.Users.Chatbot do
  use AgroconnectWeb, :user_live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>Chatbot</h1>
    """
  end
end

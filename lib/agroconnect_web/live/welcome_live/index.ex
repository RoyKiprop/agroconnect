defmodule AgroconnectWeb.WelcomeLive.Index do
  use AgroconnectWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_event("navigate_to_farmer", _params, socket) do
    {:noreply, socket}
  end

  def handle_event("navigate_to_pet_owner", _params, socket) do
    {:noreply, socket}
  end

  def render(assigns) do
    ~H"""
    <div>
      <.welcome />
    </div>
    """
  end
end

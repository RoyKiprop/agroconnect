defmodule AgroconnectWeb.Vets.Hours do
  use AgroconnectWeb, :vet_live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>Opening hours</h1>
    """
  end
end

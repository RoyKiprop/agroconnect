defmodule AgroconnectWeb.OpeningHourLive.Show do
  use AgroconnectWeb, :live_view

  alias Agroconnect.OpeningHours

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:opening_hour, OpeningHours.get_opening_hour!(id))}
  end

  defp page_title(:show), do: "Show Opening hour"
  defp page_title(:edit), do: "Edit Opening hour"
end

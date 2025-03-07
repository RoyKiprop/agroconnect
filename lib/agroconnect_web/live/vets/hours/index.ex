defmodule AgroconnectWeb.Vets.Hours.Index do
  use AgroconnectWeb, :vet_live_view
  alias Agroconnect.OpeningHours
  alias Agroconnect.OpeningHours.OpeningHour

  @impl true
  def mount(_params, _session, socket) do
    {:ok, stream(socket, :opening_hours, OpeningHours.list_opening_hours())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Opening hour")
    |> assign(:opening_hour, OpeningHours.get_opening_hour!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Opening hour")
    |> assign(:opening_hour, %OpeningHour{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Opening hours")
    |> assign(:opening_hour, nil)
  end

  @impl true
  def handle_info({AgroconnectWeb.OpeningHourLive.FormComponent, {:saved, opening_hour}}, socket) do
    {:noreply, stream_insert(socket, :opening_hours, opening_hour)}
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    opening_hour = OpeningHours.get_opening_hour!(id)
    {:ok, _} = OpeningHours.delete_opening_hour(opening_hour)

    {:noreply, stream_delete(socket, :opening_hours, opening_hour)}
  end
end

defmodule AgroconnectWeb.Vets.Appointments.Index do
  use AgroconnectWeb, :vet_live_view

  alias Agroconnect.Bookings

  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(page_title: "Appointments")
     |> assign(bookings: Bookings.list_bookings())}
  end
end

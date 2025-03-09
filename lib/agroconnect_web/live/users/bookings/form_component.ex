defmodule AgroconnectWeb.Users.Bookings.FormComponent do
  use AgroconnectWeb, :live_component

  alias Agroconnect.Bookings

  @impl true
  def render(assigns) do
    ~H"""
    <div>
      <.header>
        {@title}
      </.header>

      <.simple_form
        for={@form}
        id="booking-form"
        phx-target={@myself}
        phx-change="validate"
        phx-submit="save"
      >
        <.input
          field={@form[:day_of_week]}
          type="select"
          label="Book Nearest Vet"
          options={[
            {"Monday", "monday"},
            {"Tuesday", "tuesday"},
            {"Wednesday", "wednesday"},
            {"Thursday", "thursday"},
            {"Friday", "friday"},
            {"Saturday", "saturday"},
            {"Sunday", "sunday"}
          ]}
        />
        <.input field={@form[:date]} type="date" label="Date" />
        <.input field={@form[:start_time]} type="time" label="From" />
        <.input field={@form[:end_time]} type="time" label="To" />
        <.input
          field={@form[:end_time]}
          type="select"
          label="Appointment Type"
          options={[
            {"In person", "in person"},
            {"Online", "online"}
          ]}
        />
        <.input field={@form[:animal_type]} type="text" label="Animal Type" />
        <.input field={@form[:notes]} type="textarea" label="Notes" />
        <.input
          field={@form[:notes]}
          type="select"
          label="Status"
          options={[
            {"Pending", "pending"},
            {"Confirmed", "confirmed"},
            {"Cancelled", "cancelled"}
          ]}
        />
        <:actions>
          <.button phx-disable-with="Saving...">Save Bookings</.button>
        </:actions>
      </.simple_form>
    </div>
    """
  end

  @impl true
  def update(%{booking: booking} = assigns, socket) do
    {:ok,
     socket
     |> assign(assigns)
     |> assign_new(:form, fn ->
       to_form(Bookings.change_booking(booking))
     end)}
  end

  @impl true
  def handle_event("validate", %{"booking" => booking_params}, socket) do
    changeset = Bookings.change_booking(socket.assigns.booking, booking_params)
    {:noreply, assign(socket, form: to_form(changeset, action: :validate))}
  end

  def handle_event("save", %{"booking" => booking_params}, socket) do
    save_booking(socket, socket.assigns.action, booking_params)
  end

  defp save_booking(socket, :edit, booking_params) do
    case Bookings.update_booking(socket.assigns.booking, booking_params) do
      {:ok, booking} ->
        notify_parent({:saved, booking})

        {:noreply,
         socket
         |> put_flash(:info, "Bookings updated successfully")
         |> push_patch(to: socket.assigns.patch)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, form: to_form(changeset))}
    end
  end

  defp save_booking(socket, :new, booking_params) do
    case Bookings.create_booking(booking_params) do
      {:ok, booking} ->
        notify_parent({:saved, booking})

        {:noreply,
         socket
         |> put_flash(:info, "Bookings created successfully")
         |> push_patch(to: socket.assigns.patch)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, form: to_form(changeset))}
    end
  end

  defp notify_parent(msg), do: send(self(), {__MODULE__, msg})
end

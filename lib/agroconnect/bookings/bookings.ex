defmodule Agroconnect.Bookings do
  @moduledoc """
  Booking context file
  """

  alias Agroconnect.Repo
  alias Agroconnect.Bookings.Booking
  @repo Repo

  def list_bookings do
    @repo.all(Booking)
  end

  def get_booking!(id), do: Repo.get!(Booking, id)

  def create_booking(attrs \\ %{}) do
    %Booking{}
    |> Booking.changeset(attrs)
    |> @repo.insert()
  end

  def update_booking(booking, attrs) do
    booking
    |> Booking.changeset(attrs)
    |> @repo.update()
  end

  def delete_booking(booking) do
    booking
    |> Booking.changeset(%{deleted_at: DateTime.utc_now()})
    |> @repo.update()
  end

  def change_booking(%Booking{} = booking, attrs \\ %{}) do
    Booking.changeset(booking, attrs)
  end
end

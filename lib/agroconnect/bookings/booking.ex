defmodule Agroconnect.Bookings.Booking do
  @moduledoc """
  Booking schema
  """
  use Ecto.Schema
  import Ecto.Changeset

  schema "bookings" do
    field :animal_type, :string
    field :date, :date
    field :end_time, :utc_datetime
    field :notes, :string
    field :start_time, :utc_datetime
    field :status, :string
    field :appointment_type, :string, default: "in person"
    field :user_id, :id
    field :vet_id, :id
    field :deleted_at, :utc_datetime

    timestamps()
  end

  def changeset(booking, attrs) do
    booking
    |> cast(attrs, [
      :user_id,
      :vet_id,
      :date,
      :start_time,
      :end_time,
      :status,
      :animal_type,
      :appointment_type,
      :notes,
      :deleted_at
    ])
    |> validate_required([
      :user_id,
      :vet_id,
      :date,
      :start_time,
      :end_time,
      :status,
      :animal_type,
      :appointment_type
    ])
    |> validate_inclusion(:status, ["pending", "confirmed", "completed", "cancelled"])
  end

  def changeset_no_deleted_at(booking, attrs) do
    booking
    |> cast(attrs, [
      :user_id,
      :vet_id,
      :date,
      :start_time,
      :end_time,
      :status,
      :animal_type,
      :notes
    ])
    |> validate_required([
      :user_id,
      :vet_id,
      :date,
      :start_time,
      :end_time,
      :status,
      :animal_type,
      :appointment_type
    ])
    |> validate_inclusion(:status, ["pending", "confirmed", "completed", "cancelled"])
  end
end

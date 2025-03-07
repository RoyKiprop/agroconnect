defmodule Agroconnect.OpeningHours.OpeningHour do
  use Ecto.Schema
  import Ecto.Changeset

  @day_of_week_options [
    "monday",
    "tuesday",
    "wednesday",
    "thursday",
    "friday",
    "saturday",
    "sunday"
  ]

  schema "opening_hours" do
    field :day_of_week, :string
    field :start_time, :time
    field :end_time, :time
    field :vet_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(opening_hour, attrs) do
    opening_hour
    |> cast(attrs, [:day_of_week, :start_time, :end_time])
    |> validate_required([:day_of_week, :start_time, :end_time])
    |> validate_inclusion(:day_of_week, @day_of_week_options)
  end
end

defmodule Agroconnect.OpeningHours.OpeningHour do
  use Ecto.Schema
  import Ecto.Changeset

  schema "opening_hours" do
    field :day_of_week, :integer
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
  end
end

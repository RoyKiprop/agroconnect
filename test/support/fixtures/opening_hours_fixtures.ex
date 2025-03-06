defmodule Agroconnect.OpeningHoursFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Agroconnect.OpeningHours` context.
  """

  @doc """
  Generate a opening_hour.
  """
  def opening_hour_fixture(attrs \\ %{}) do
    {:ok, opening_hour} =
      attrs
      |> Enum.into(%{
        day_of_week: 42,
        end_time: ~T[14:00:00],
        start_time: ~T[14:00:00]
      })
      |> Agroconnect.OpeningHours.create_opening_hour()

    opening_hour
  end
end

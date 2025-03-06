defmodule Agroconnect.OpeningHoursTest do
  use Agroconnect.DataCase

  alias Agroconnect.OpeningHours

  describe "opening_hours" do
    alias Agroconnect.OpeningHours.OpeningHour

    import Agroconnect.OpeningHoursFixtures

    @invalid_attrs %{day_of_week: nil, start_time: nil, end_time: nil}

    test "list_opening_hours/0 returns all opening_hours" do
      opening_hour = opening_hour_fixture()
      assert OpeningHours.list_opening_hours() == [opening_hour]
    end

    test "get_opening_hour!/1 returns the opening_hour with given id" do
      opening_hour = opening_hour_fixture()
      assert OpeningHours.get_opening_hour!(opening_hour.id) == opening_hour
    end

    test "create_opening_hour/1 with valid data creates a opening_hour" do
      valid_attrs = %{day_of_week: 42, start_time: ~T[14:00:00], end_time: ~T[14:00:00]}

      assert {:ok, %OpeningHour{} = opening_hour} = OpeningHours.create_opening_hour(valid_attrs)
      assert opening_hour.day_of_week == 42
      assert opening_hour.start_time == ~T[14:00:00]
      assert opening_hour.end_time == ~T[14:00:00]
    end

    test "create_opening_hour/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = OpeningHours.create_opening_hour(@invalid_attrs)
    end

    test "update_opening_hour/2 with valid data updates the opening_hour" do
      opening_hour = opening_hour_fixture()
      update_attrs = %{day_of_week: 43, start_time: ~T[15:01:01], end_time: ~T[15:01:01]}

      assert {:ok, %OpeningHour{} = opening_hour} = OpeningHours.update_opening_hour(opening_hour, update_attrs)
      assert opening_hour.day_of_week == 43
      assert opening_hour.start_time == ~T[15:01:01]
      assert opening_hour.end_time == ~T[15:01:01]
    end

    test "update_opening_hour/2 with invalid data returns error changeset" do
      opening_hour = opening_hour_fixture()
      assert {:error, %Ecto.Changeset{}} = OpeningHours.update_opening_hour(opening_hour, @invalid_attrs)
      assert opening_hour == OpeningHours.get_opening_hour!(opening_hour.id)
    end

    test "delete_opening_hour/1 deletes the opening_hour" do
      opening_hour = opening_hour_fixture()
      assert {:ok, %OpeningHour{}} = OpeningHours.delete_opening_hour(opening_hour)
      assert_raise Ecto.NoResultsError, fn -> OpeningHours.get_opening_hour!(opening_hour.id) end
    end

    test "change_opening_hour/1 returns a opening_hour changeset" do
      opening_hour = opening_hour_fixture()
      assert %Ecto.Changeset{} = OpeningHours.change_opening_hour(opening_hour)
    end
  end
end

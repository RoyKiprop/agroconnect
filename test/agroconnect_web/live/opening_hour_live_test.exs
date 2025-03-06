defmodule AgroconnectWeb.OpeningHourLiveTest do
  use AgroconnectWeb.ConnCase

  import Phoenix.LiveViewTest
  import Agroconnect.OpeningHoursFixtures

  @create_attrs %{day_of_week: 42, start_time: "14:00", end_time: "14:00"}
  @update_attrs %{day_of_week: 43, start_time: "15:01", end_time: "15:01"}
  @invalid_attrs %{day_of_week: nil, start_time: nil, end_time: nil}

  defp create_opening_hour(_) do
    opening_hour = opening_hour_fixture()
    %{opening_hour: opening_hour}
  end

  describe "Index" do
    setup [:create_opening_hour]

    test "lists all opening_hours", %{conn: conn} do
      {:ok, _index_live, html} = live(conn, ~p"/opening_hours")

      assert html =~ "Listing Opening hours"
    end

    test "saves new opening_hour", %{conn: conn} do
      {:ok, index_live, _html} = live(conn, ~p"/opening_hours")

      assert index_live |> element("a", "New Opening hour") |> render_click() =~
               "New Opening hour"

      assert_patch(index_live, ~p"/opening_hours/new")

      assert index_live
             |> form("#opening_hour-form", opening_hour: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert index_live
             |> form("#opening_hour-form", opening_hour: @create_attrs)
             |> render_submit()

      assert_patch(index_live, ~p"/opening_hours")

      html = render(index_live)
      assert html =~ "Opening hour created successfully"
    end

    test "updates opening_hour in listing", %{conn: conn, opening_hour: opening_hour} do
      {:ok, index_live, _html} = live(conn, ~p"/opening_hours")

      assert index_live |> element("#opening_hours-#{opening_hour.id} a", "Edit") |> render_click() =~
               "Edit Opening hour"

      assert_patch(index_live, ~p"/opening_hours/#{opening_hour}/edit")

      assert index_live
             |> form("#opening_hour-form", opening_hour: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert index_live
             |> form("#opening_hour-form", opening_hour: @update_attrs)
             |> render_submit()

      assert_patch(index_live, ~p"/opening_hours")

      html = render(index_live)
      assert html =~ "Opening hour updated successfully"
    end

    test "deletes opening_hour in listing", %{conn: conn, opening_hour: opening_hour} do
      {:ok, index_live, _html} = live(conn, ~p"/opening_hours")

      assert index_live |> element("#opening_hours-#{opening_hour.id} a", "Delete") |> render_click()
      refute has_element?(index_live, "#opening_hours-#{opening_hour.id}")
    end
  end

  describe "Show" do
    setup [:create_opening_hour]

    test "displays opening_hour", %{conn: conn, opening_hour: opening_hour} do
      {:ok, _show_live, html} = live(conn, ~p"/opening_hours/#{opening_hour}")

      assert html =~ "Show Opening hour"
    end

    test "updates opening_hour within modal", %{conn: conn, opening_hour: opening_hour} do
      {:ok, show_live, _html} = live(conn, ~p"/opening_hours/#{opening_hour}")

      assert show_live |> element("a", "Edit") |> render_click() =~
               "Edit Opening hour"

      assert_patch(show_live, ~p"/opening_hours/#{opening_hour}/show/edit")

      assert show_live
             |> form("#opening_hour-form", opening_hour: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert show_live
             |> form("#opening_hour-form", opening_hour: @update_attrs)
             |> render_submit()

      assert_patch(show_live, ~p"/opening_hours/#{opening_hour}")

      html = render(show_live)
      assert html =~ "Opening hour updated successfully"
    end
  end
end

defmodule ChampionerOneWeb.PageIndexTest do
  use ChampionerOneWeb.ConnCase
  use ExUnit.Case
  use Hound.Helpers
  
  hound_session()

  test "presence of welcome message", %{conn: conn} do
    navigate_to page_path(conn, :index)
    assert page_source() =~ "Welcome to Championer"

  end

  test "presence of video overlay message", %{conn: conn} do
    navigate_to page_path(conn, :index)
    assert page_source() =~ "We're a Tech Nonprofit"
    assert page_source() =~ "Volunteers design and develop prototypes and products that make a difference in the world"
  end

  test "Volunteer video overlay button works", %{conn: conn}  do
    navigate_to page_path(conn, :index)

    find_element(:class, "btn-overlay")
    |> click()
    assert current_path() == page_path(conn, :volunteer)
  end
end


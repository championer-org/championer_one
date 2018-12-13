defmodule ChampionerOneWeb.PageVolunteerTest do
  use ChampionerOneWeb.ConnCase
  use ExUnit.Case
  use Hound.Helpers

  hound_session()

  setup do
    conn = build_conn()
    navigate_to page_path(conn, :volunteer)
    {:ok, conn: conn}
  end

  test "text pointing to /volunteers exists" do
    assert page_source() =~ "See our list of volunteer contributors"
  end

  test "presence of /volunteers link", %{conn: conn} do
    find_element(:link_text, "here")
    |> click()
    assert current_path() == volunteer_path(conn, :index)
  end
end

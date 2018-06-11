defmodule ChampionerOneWeb.PageIndexTest do
  use ChampionerOneWeb.ConnCase
  use ExUnit.Case
  use Hound.Helpers
  
  hound_session()

  test "presence of welcome message", %{conn: conn} do
    navigate_to page_path(conn, :index)
    assert page_source() =~ "Welcome to Championer"

  end
end


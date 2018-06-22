defmodule ChampionerOneWeb.LayoutNavTest do
  use ChampionerOneWeb.ConnCase
  use ExUnit.Case
  use Hound.Helpers

  hound_session()

  setup do
    conn = build_conn()
    navigate_to page_path(conn, :index)
    maximize_window(current_window_handle())
    {:ok, conn: conn, parent_element: find_element(:tag, "nav")}
  end

  describe "within navbar" do
    test "presence of nav section" do
      assert(find_element(:tag, "nav"))
    end

    test "presence of Mission link", %{parent_element: parent_element, conn: conn} do
      parent_element
      |> find_within_element(:link_text, "Mission")
      |> click()
      assert(current_path() == page_path(conn, :mission))
    end

    test "presence of Volunteer link", %{parent_element: parent_element, conn: conn} do
      parent_element
      |> find_within_element(:link_text, "Volunteer")
      |> click()
      assert(current_path() == page_path(conn, :volunteer))
    end

    test "presence of Donate link", %{parent_element: parent_element, conn: conn} do
      parent_element
      |> find_within_element(:link_text, "Donate")
      |> click()
      assert(current_path() == page_path(conn, :donate))
    end

    test "presence of Products link", %{parent_element: parent_element, conn: conn} do
      parent_element
      |> find_within_element(:link_text, "Products")
      |> click()
      assert(current_path() == page_path(conn, :products))
    end

    test "presence of Partners link", %{parent_element: parent_element, conn: conn} do
      parent_element
      |> find_within_element(:link_text, "Partners")
      |> click()
      assert(current_path() == page_path(conn, :partners))
    end

    test "presence of Contact link", %{parent_element: parent_element, conn: conn} do
      parent_element
      |> find_within_element(:link_text, "Contact")
      |> click()
      assert(current_path() == page_path(conn, :contact))
    end
  end
end

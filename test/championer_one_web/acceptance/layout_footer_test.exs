defmodule ChampionerOneWeb.LayoutFooterTest do
  use ChampionerOneWeb.ConnCase
  use ExUnit.Case
  use Hound.Helpers

  hound_session()

  setup do
    navigate_to page_path(build_conn(), :index)
    {:ok, conn: build_conn(), parent_element: find_element(:tag, "footer")}
  end

  test "presence of footer section" do
    assert(find_element(:tag, "footer"))
  end

  test "presence of Terms of Use link", %{conn: conn}  do
    find_element(:link_text, "Terms of Use")
    |> click()
    assert(current_path() == page_path(conn, :terms_of_use))
  end

  test "presence of Privacy Notice link" do
    assert(find_element(:link_text, "Privacy Notice"))
  end

  test "presence of Sponsor Us link" do
    assert(find_element(:link_text, "Sponsor Us"))
  end

  test "presence of Partner with Us link" do
    assert(find_element(:link_text, "Partner with Us"))
  end

  describe "within footer" do
    test "presence of Mission link", %{parent_element: parent_element} do
      assert(find_within_element(parent_element, :link_text, "Mission"))
    end

    test "presence of Volunteer link", %{parent_element: parent_element} do
      assert(find_within_element(parent_element, :link_text, "Volunteer"))
    end

    test "presence of Donate link", %{parent_element: parent_element} do
      assert(find_within_element(parent_element, :link_text, "Donate"))
    end

    test "presence of Products link", %{parent_element: parent_element} do
      assert(find_within_element(parent_element, :link_text, "Products"))
    end

    test "presence of Partners link", %{parent_element: parent_element} do
      assert(find_within_element(parent_element, :link_text, "Partners"))
    end

    test "presence of Contact link", %{parent_element: parent_element} do
      assert(find_within_element(parent_element, :link_text, "Contact"))
    end

    test "presence of YouTube link", %{parent_element: parent_element} do
      assert(find_within_element(parent_element, :class, "fa-youtube-play"))
    end

    test "presence of Twitter link", %{parent_element: parent_element} do
      assert(find_within_element(parent_element, :class, "fa-twitter"))
    end

    test "presence of Facebook link", %{parent_element: parent_element} do
      assert(find_within_element(parent_element, :class, "fa-facebook-official"))
    end

    test "presence of Instagram link", %{parent_element: parent_element} do
      parent_element
      |> find_within_element(:class, "fa-instagram")
      |> click()
      :timer.sleep(1000)
      assert(current_url() == "https://www.instagram.com/championerorg/")
    end

    test "presence of  Medium link", %{parent_element: parent_element} do
      assert(find_within_element(parent_element, :class, "fa-medium"))
    end
  end
end

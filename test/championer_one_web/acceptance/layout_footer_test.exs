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

  test "presence of Terms of Use link"  do
    find_element(:link_text, "Terms of Use")
    |> click()
    assert(current_path() == page_path(build_conn(), :terms_of_use))
  end

  test "presence of Privacy Notice link" do
    find_element(:link_text, "Privacy Notice")
    |> click()
    assert(current_path() == page_path(build_conn(), :privacy_notice))
  end

  test "presence of Sponsor Us link" do
    find_element(:link_text, "Sponsor Us")
    |> click()
    assert(current_path() == page_path(build_conn(), :sponsor_us))
  end

  test "presence of Partner with Us link" do
    find_element(:link_text, "Partner with Us")
    |> click()
    assert(current_path() == page_path(build_conn(), :partner_with_us))
  end

  describe "within footer" do
    test "presence of Mission link", %{parent_element: parent_element} do
      parent_element
      |> find_within_element(:link_text, "Mission")
      |> click()
      assert(current_path() == page_path(build_conn(), :mission))
    end

    test "presence of Volunteer link", %{parent_element: parent_element} do
      parent_element
      |> find_within_element(:link_text, "Volunteer")
      |> click()
      assert(current_path() == page_path(build_conn(), :volunteer))
    end

    test "presence of Donate link", %{parent_element: parent_element} do
      parent_element
      |> find_within_element(:link_text, "Donate")
      |> click()
      assert(current_path() == page_path(build_conn(), :donate))
    end

    test "presence of Products link", %{parent_element: parent_element} do
      parent_element
      |> find_within_element(:link_text, "Products")
      |> click()
      assert(current_path() == page_path(build_conn(), :products))
    end

    test "presence of Partners link", %{parent_element: parent_element} do
      parent_element
      |> find_within_element(:link_text, "Partners")
      |> click()
      assert(current_path() == page_path(build_conn(), :partners))
    end

    test "presence of Contact link", %{parent_element: parent_element} do
      parent_element
      |> find_within_element(:link_text, "Contact")
      |> click()
      assert(current_path() == page_path(build_conn(), :contact))
    end

    test "presence of YouTube link", %{parent_element: parent_element} do
      parent_element
      |> find_within_element(:id, "youtube-icon")
      |> click()
      assert(current_url() == "https://www.youtube.com/channel/UCqRP-fMnT3YUdnYqmkHDYOA")
    end

    test "presence of Twitter link", %{parent_element: parent_element} do
      parent_element
      |> find_within_element(:class, "fa-twitter")
      |> click()
      assert(current_url() == "https://twitter.com/ChampionerOrg")
    end

    test "presence of Facebook link", %{parent_element: parent_element} do
      parent_element
      |> find_within_element(:class, "fa-facebook-official")
      |> click()
      assert(current_url() == "https://www.facebook.com/ChampionerOrg")
    end

    test "presence of Instagram link", %{parent_element: parent_element} do
      :timer.sleep(9000)
      parent_element
      |> find_within_element(:class, "fa-instagram")
      |> click()
      # :timer.sleep(1000)
      # IO.puts current_url()
      # IO.inspect current_url(), label: "++++++++"
      # assert(current_url() =~ "instagram.com/championerorg")
      assert(page_source() =~ "<title>ChampionerOrg (@championerorg)" <>
                              " • Instagram photos and videos</title>")
    end

    test "presence of  Medium link", %{parent_element: parent_element} do
      link = parent_element
             |> find_within_element(:class, "fa-medium")
      :timer.sleep(9000)
      click(link)
      assert(current_url() == "https://medium.com/@ChampionerOrg")
    end
  end
end

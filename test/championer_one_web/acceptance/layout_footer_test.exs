defmodule ChampionerOneWeb.LayoutFooterTest do
  use ChampionerOneWeb.ConnCase
  use ExUnit.Case
  use Hound.Helpers

  hound_session()

  setup do
    navigate_to page_path(build_conn(), :index)
    {:ok, conn: build_conn()}
  end

  test "presence of footer section" do
    assert page_source() =~ "<footer>"
    assert page_source() =~ "</footer>"
  end

  test "presence of Terms of Use link" do
    assert(find_element(:link_text, "Terms of Use"))
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

  test "presence of footer mission link" do
    parent_element = find_element(:tag, "footer")
    assert(find_within_element(parent_element, :link_text, "Mission"))
  end

  test "presence of footer Volunteer link" do
    parent_element = find_element(:tag, "footer")
    assert(find_within_element(parent_element, :link_text, "Volunteer"))
  end

  test "presence of footer Donate link" do
    parent_element = find_element(:tag, "footer")
    assert(find_within_element(parent_element, :link_text, "Donate"))
  end

  test "presence of footer Products link" do
    parent_element = find_element(:tag, "footer")
    assert(find_within_element(parent_element, :link_text, "Products"))
  end

  test "presence of footer Partners link" do
    parent_element = find_element(:tag, "footer")
    assert(find_within_element(parent_element, :link_text, "Partners"))
  end

  test "presence of footer Contact link" do
    parent_element = find_element(:tag, "footer")
    assert(find_within_element(parent_element, :link_text, "Contact"))
  end
end

defmodule ChampionerOneWeb.LayoutFooterTest do
  use ChampionerOneWeb.ConnCase
  use ExUnit.Case
  use Hound.Helpers

  hound_session()

  setup do
    navigate_to page_path(conn, :index)
    :ok
  end

 test "presence of footer section", %{conn: conn} do
   assert page_source() =~ "<footer>"
   assert page_source() =~ "</footer>"
 end

 test "presence of Terms of Use link", %{conn: conn} do
  assert(find_element(:link_text, "Terms of Use"))
 end

 test "presence of Privacy Notice link", %{conn: conn} do
  assert(find_element(:link_text, "Privacy Notice"))
 end

 test "presence of Sponsor Us link", %{conn: conn} do
  assert(find_element(:link_text, "Sponsor Us"))
 end

 test "presence of Partner with Us link", %{conn: conn} do
  assert(find_element(:link_text, "Partner with Us"))
 end
end

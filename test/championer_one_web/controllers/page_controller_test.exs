defmodule ChampionerOneWeb.PageControllerTest do
  use ChampionerOneWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, page_path(conn, :index)
    assert html_response(conn, 200) =~ "Welcome to Championer One!"
  end

  test "GET /mission", %{conn: conn} do
    conn = get conn, page_path(conn, :mission)
    assert html_response(conn, 200) =~ "Championer One Mission!"
    assert_background_video_is_not_present(conn)
  end

  test "GET /volunteer", %{conn: conn} do
    conn = get conn, page_path(conn, :volunteer)
    assert html_response(conn, 200) =~ "Volunteer for Championer One!"
    assert_background_video_is_not_present(conn)
  end

  test "GET /donate", %{conn: conn} do
    conn = get conn, page_path(conn, :donate)
    assert html_response(conn, 200) =~ "Help Championer One. Donate!"
    assert_background_video_is_not_present(conn)
  end

  test "GET /products", %{conn: conn} do
    conn = get conn, page_path(conn, :products)
    assert html_response(conn, 200) =~ "Championer One products"
    assert_background_video_is_not_present(conn)
  end

  test "GET /partners", %{conn: conn} do
    conn = get conn, page_path(conn, :partners)
    assert html_response(conn, 200) =~ "Meet Championer One partners"
    assert_background_video_is_not_present(conn)
  end

  test "GET /contact", %{conn: conn} do
    conn = get conn, page_path(conn, :contact)
    assert html_response(conn, 200) =~ "Get in contact with Championer One"
    assert_background_video_is_not_present(conn)
  end

  test "GET /terms_of_use", %{conn: conn} do
    conn = get conn, page_path(conn, :terms_of_use)
    assert html_response(conn, 200) =~ "Championer One Terms of Use"
    assert_background_video_is_not_present(conn)
  end

  test "GET /privacy_notice", %{conn: conn} do
    conn = get conn, page_path(conn, :privacy_notice)
    assert html_response(conn, 200) =~ "Championer One Privacy Notice"
    assert_background_video_is_not_present(conn)
  end

  test "GET /sponsor_us", %{conn: conn} do
    conn = get conn, page_path(conn, :sponsor_us)
    assert html_response(conn, 200) =~ "Sponsor Championer One"
    assert_background_video_is_not_present(conn)
  end

  test "GET /partner_with_us", %{conn: conn} do
    conn = get conn, page_path(conn, :partner_with_us)
    assert html_response(conn, 200) =~ "Partner with Championer One"
    assert_background_video_is_not_present(conn)
  end
  defp assert_background_video_is_not_present(conn) do
    refute html_response(conn, 200) =~ "We're a Tech Nonprofit"
  end
end

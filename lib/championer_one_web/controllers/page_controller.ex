defmodule ChampionerOneWeb.PageController do
  use ChampionerOneWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def volunteer(conn, _params) do
    render conn, :volunteer
  end

  def mission(conn, _params) do
    render conn, :mission
  end

  def donate(conn, _params) do
    render conn, :donate
  end

  def products(conn, _params) do
    render conn, :products
  end

  def partners(conn, _params) do
    render conn, :partners
  end

  def contact(conn, _params) do
    render conn, :contact
  end

  def terms_of_use(conn, _params) do
    render conn, :terms_of_use
  end

  def privacy_notice(conn, _params) do
    render conn, :privacy_notice
  end

  def sponsor_us(conn, _params) do
    render conn, :sponsor_us
  end

  def partner_with_us(conn, _params) do
    render conn, :partner_with_us
  end
end

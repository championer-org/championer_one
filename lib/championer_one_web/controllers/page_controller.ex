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
end

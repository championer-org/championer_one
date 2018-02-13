defmodule ChampionerOneWeb.PageController do
  use ChampionerOneWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

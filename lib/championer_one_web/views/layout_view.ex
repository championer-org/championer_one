defmodule ChampionerOneWeb.LayoutView do
  use ChampionerOneWeb, :view

  def title do
    "Hello ChampionerOne!"
  end

  def index_page?(conn) do
    Phoenix.Controller.current_path(conn) |> String.length === 1
  end
end

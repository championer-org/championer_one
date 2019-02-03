defmodule ChampionerOneWeb.LayoutView do
  use ChampionerOneWeb, :view

  def title do
    "Hello ChampionerOne!"
  end
  
  def index_page?(conn) do
    conn |> Phoenix.Controller.current_path |> String.length === 1
  end
  
  def page_links(conn) do
    [:mission, :volunteer, :donate, :products, :partners, :contact]
    |> Enum.map(&list_item(&1, conn))
  end
  
  def list_item(page, conn) do
    content_tag(:li, linkify_atom(page, conn))
  end

  def linkify_atom(page, conn) do
    page |> to_string |> String.capitalize |> link(to: page_path(conn, page))
  end
end

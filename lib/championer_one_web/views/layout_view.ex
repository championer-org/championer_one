defmodule ChampionerOneWeb.LayoutView do
  use ChampionerOneWeb, :view

  def title do
    "Hello ChampionerOne!"
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

  def js_script_tag do
    if Mix.env == :prod do
      ~s(<script src="/js/app.js"></script>)
    else
      ~s(<script src="http://localhost:8080/js/app.js"></script>)
    end
  end
  def css_link_tag do
    if Mix.env == :prod do
      ~s(<link rel="stylesheet" type="text/css" href="/css/app.css" media="screen,projection" />)
    else
      ""
    end
  end
end
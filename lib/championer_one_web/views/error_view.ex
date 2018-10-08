defmodule ChampionerOneWeb.ErrorView do
  use ChampionerOneWeb, :view

  def render("404_page.html", _assigns) do
    render render("400-page.html",%{})
  end

  def render("500-page.html", _assigns) do
    render("500-page.html",%{})
  end

  # In case no render clause matches or no
  # template is found, let's render it as 500
  def template_not_found(_template, assigns) do
    render "500-page.html", assigns
  end
end

defmodule ChampionerOneWeb.ErrorView do
  use ChampionerOneWeb, :view
  def title do
    "Hello ChampionerOne!"
  end


  def render("404.html", _assigns) do
    render("404-page.html", %{})
  end

  def render("500.html", _assigns) do
    render("500-page.html", %{})
  end

  # In case no render clause matches or no
  # template is found, let's render it as 500
  def template_not_found(_template, assigns) do
    render "500.html", assigns
  end
end

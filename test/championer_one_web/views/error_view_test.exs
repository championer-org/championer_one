defmodule ChampionerOneWeb.ErrorViewTest do
  use ChampionerOneWeb.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "renders 404.html" do
    assert render_to_string(ChampionerOneWeb.ErrorView, "404.html", []) =~
           "Sorry, the page you are looking for does not exist."
  end

  test "render 500.html" do
    assert render_to_string(ChampionerOneWeb.ErrorView, "500.html", []) =~
           "This page is not working. The problem is not you; it's me."
  end

  test "render any other" do
    assert render_to_string(ChampionerOneWeb.ErrorView, "905.html", []) =~
           "This page is not working. The problem is not you; it's me."
  end
end

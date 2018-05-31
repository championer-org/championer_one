defmodule ChampionerOneWeb.LayoutView do
  use ChampionerOneWeb, :view
  def render("navbar.html", assigns) do
    "rendering with assigns #{inspect Map.keys(assigns)}"
  end
end

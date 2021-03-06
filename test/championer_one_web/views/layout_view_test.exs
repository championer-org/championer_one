defmodule ChampionerOneWeb.LayoutViewTest do
  use ChampionerOneWeb.ConnCase, async: true
  import ChampionerOneWeb.LayoutView
  import Phoenix.HTML, only: [safe_to_string: 1]
 
  test "linkify_atom/2" do
    assert linkify_atom(:contact, build_conn())
    |> safe_to_string == "<a href=\"/contact\">Contact</a>"
  end

  test "list_item/2" do
    assert list_item(:contact, build_conn())
    |> safe_to_string == "<li><a href=\"/contact\">Contact</a></li>"
  end

  test "page_links/1 generates 6 links" do
    assert build_conn() |> page_links |> Enum.count == 6
  end
end

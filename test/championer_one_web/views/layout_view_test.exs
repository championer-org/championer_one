defmodule ChampionerOneWeb.LayoutViewTest do
	use ChampionerOneWeb.ConnCase, async: true

	alias ChampionerOneWeb.LayoutView


	test "linkify_atom/2" do
		assert LayoutView.linkify_atom(:contact, build_conn())
		|> Phoenix.HTML.safe_to_string == "<a href=\"/contact\">Contact</a>"
	end

	test "list_item/2" do
		assert LayoutView.list_item(:contact, build_conn())
		|> Phoenix.HTML.safe_to_string == "<li><a href=\"/contact\">Contact</a></li>"
	end

	test "page_links/1" do
		# [:mission, :volunteer, :donate, :products, :partners, :contact]
		assert LayoutView.page_links(build_conn())
		|> Enum.count == 6
	end
end

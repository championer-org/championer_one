defmodule ChampionerOneWeb.Router do
  use ChampionerOneWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ChampionerOneWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/mission", PageController, :mission
    get "/volunteer", PageController, :volunteer
    get "/donate", PageController, :donate
    get "/products", PageController, :products
    get "/partners", PageController, :partners
    get "/contact", PageController, :contact
    get "/terms_of_use", PageController, :terms-of-use
    get "/privacy_notice", PageController, :privacy-notice
    get "/sponsor_us", PageController, :sponsor-us
    get "/partner_with_us", PageController, :partner-with-us
  end

  # Other scopes may use custom stacks.
  # scope "/api", ChampionerOneWeb do
  #   pipe_through :api
  # end
end

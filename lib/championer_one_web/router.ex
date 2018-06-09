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
  end

  # Other scopes may use custom stacks.
  # scope "/api", ChampionerOneWeb do
  #   pipe_through :api
  # end
end

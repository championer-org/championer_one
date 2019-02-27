# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :championer_one,
ecto_repos: [ChampionerOne.Repo]

# Configures the endpoint
config :championer_one, ChampionerOneWeb.Endpoint,
url: [host: "localhost"],
secret_key_base: "Y73wXkKA2P4DznzLtPQ9/nXuhz2UZPsJB7SatyQh0jJJJKnF9X84as9X1uwR85M6",
render_errors: [view: ChampionerOneWeb.ErrorView, accepts: ~w(html json)],
pubsub: [name: ChampionerOne.PubSub,
  adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
format: "$time $metadata[$level] $message\n",
metadata: [:request_id]

# Config hound for Chome headless testing
config :hound,
driver: "chrome_driver",
browser: "chrome_headless",
additional_capabilities: %{
  chromeOptions: %{ "args" => [
    "--headless"
  ]}
}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason
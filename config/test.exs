use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :championer_one, ChampionerOneWeb.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :championer_one, ChampionerOne.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "championer_one_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

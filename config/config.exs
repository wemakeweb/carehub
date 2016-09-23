# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :carehub,
  ecto_repos: [Carehub.Repo]

# Configures the endpoint
config :carehub, Carehub.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lb1jgPPEXXCZS/TNU9RXB+POx5bTT8bAJnt65w49cH35hI1JtxsXsdsC4PMZ6HRK",
  render_errors: [view: Carehub.ErrorView, accepts: ~w(html json)]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :graphql_relay,
  schema_module: Schema,
  schema_json_path: "#{Path.dirname(__DIR__)}/priv/graphql"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

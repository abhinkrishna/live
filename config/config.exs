# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_test,
  ecto_repos: [LiveTest.Repo]

# Configures the endpoint
config :live_test, LiveTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+ryO0DH2vhrd2bbYi7dfOx5J3tNLD7X5GwjNYnZEoGq2NKdCxZkaeDKbTY3xKIJ8",
  render_errors: [view: LiveTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveTest.PubSub,
  live_view: [signing_salt: "OGRvFbfF"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

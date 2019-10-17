# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tease_tracker,
  ecto_repos: [TeaseTracker.Repo]

# Configures the endpoint
config :tease_tracker, TeaseTrackerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RXjFC7M5YJZb9WybUhdy+DEiBjKyu2Vsli31lvR7wb9Lk3sSj3oGXT4YeqSCdFey",
  render_errors: [view: TeaseTrackerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TeaseTracker.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

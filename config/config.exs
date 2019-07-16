# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tr2_web,
  namespace: TR2Web,
  ecto_repos: [TR2Web.Repo]

# Configures the endpoint
config :tr2_web, TR2WebWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "P4iOiKQu82vyhwbx7tLebI3R8XkMo7h3PtCutsqYTbdqGUvDPddsG3ISwuFr/5Ws",
  render_errors: [view: TR2WebWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TR2Web.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

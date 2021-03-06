# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
# use Mix.Config
import Config

config :access_news,
  ecto_repos: [AccessNews.Repo]

# Configures the endpoint
config :access_news, AccessNewsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uEw04cxXlKcFuiKlxcJFSVelnyEyxNREGyPE9ABv+mBVGKFGjp8u5lNEUdkx6M2T",
  render_errors: [view: AccessNewsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AccessNews.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Google Cloud Platform auth (see `shell.nix` for ENV variable)
config :goth, json: System.get_env("GOOGLE_APPLICATION_CREDENTIALS")

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

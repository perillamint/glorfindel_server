# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :glorfindel_server,
  ecto_repos: [GlorfindelServer.Repo]

# Configures the endpoint
config :glorfindel_server, GlorfindelServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MCSmsXwe+gXBMcPV+6DJCZDcWx4Lj17WYniwNuxyZcxSwIK9j+i3l4jkKXKilIGk",
  render_errors: [view: GlorfindelServerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GlorfindelServer.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

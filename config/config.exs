# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :learning,
  ecto_repos: [Learning.Repo]

# Configures the endpoint
config :learning, LearningWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QJb/NDU00LqqFKHu1MvCXsEzrWBkqMHJIsL8ci0Qo3Y/G/bLU8uAyZ/aB3BPCcJE",
  render_errors: [view: LearningWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Learning.PubSub,
  live_view: [signing_salt: "x+w+BTB4"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :vdee_petex,
  ecto_repos: [VdeePetex.Repo]

# Configures the endpoint
config :vdee_petex, VdeePetexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UoLH8h/mDVzPNKJAkcl2cQQZycMdMHIIDyrsNvRTUfRLZQC65nKYnj2EUfWqlwUb",
  render_errors: [view: VdeePetexWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: VdeePetex.PubSub,
  live_view: [signing_salt: "GvTGRpWk"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

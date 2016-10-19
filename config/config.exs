# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ecommerce,
  ecto_repos: [Ecommerce.Repo]

# Configures the endpoint
config :ecommerce, Ecommerce.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "v7IYebSuZ8Iv+uOmO3zFCDE7i9/kHmJ2+2/Po1f0vO5tzDqr7OJngS+s1u3lUS9u",
  render_errors: [view: Ecommerce.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ecommerce.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :addict,
  secret_key: "2432622431322474787a617a362e6b5853326a2e6f6f5361766270654f",
  extra_validation: fn ({valid, errors}, user_params) -> {valid, errors} end, # define extra validation here
  user_schema: Ecommerce.User,
  repo: Ecommerce.Repo,
  from_email: "no-reply@example.com", # CHANGE THIS
mail_service: nil
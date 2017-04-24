use Mix.Config

# For production, we often load configuration from external
# sources, such as your system environment. For this reason,
# you won't find the :http configuration below, but set inside
# SunshinesBattleacademy.Web.Endpoint.load_from_system_env/1 dynamically.
# Any dynamic configuration should be moved to such function.
#
# Don't forget to configure the url host to something meaningful,
# Phoenix uses this information when generating URLs.
#
# Finally, we also include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the mix phoenix.digest task
# which you typically run after static files are built.
config :sunshines_battleacademy, SunshinesBattleacademy.Web.Endpoint,
  on_init: {SunshinesBattleacademy.Web.Endpoint, :load_from_system_env, []},
  url: [host: "0.0.0.0", port: 4000],
  cache_static_manifest: "priv/static/cache_manifest.json"

# Do not print debug messages in production
config :logger, level: :info

# ## SSL Support
#
# To get SSL working, you will need to add the `https` key
# to the previous section and set your `:url` port to 443:
#
#     config :sunshines_battleacademy, SunshinesBattleacademy.Web.Endpoint,
#       ...
#       url: [host: "example.com", port: 443],
#       https: [:inet6,
#               port: 443,
#               keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#               certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables return an absolute path to
# the key and cert in disk or a relative path inside priv,
# for example "priv/ssl/server.key".
#
# We also recommend setting `force_ssl`, ensuring no data is
# ever sent via http, always redirecting to https:
#
#     config :sunshines_battleacademy, SunshinesBattleacademy.Web.Endpoint,
#       force_ssl: [hsts: true]
#
# Check `Plug.SSL` for all available options in `force_ssl`.

# ## Using releases
#
# If you are doing OTP releases, you need to instruct Phoenix
# to start the server for all endpoints:
#
#     config :phoenix, :serve_endpoints, true
#
# Alternatively, you can configure exactly which server to
# start per endpoint:
#
#     config :sunshines_battleacademy, SunshinesBattleacademy.Web.Endpoint, server: true
#

# Configure your database
config :sunshines_battleacademy, SunshinesBattleacademy.Repo,
  adapter: Sqlite.Ecto2,
  database: "fires_sunshines_battleacademy_dev.sqlite3"

# Finally import the config/prod.secret.exs
# which should be versioned separately.
import_config "prod.secret.exs"

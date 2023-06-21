import Config

config :upsert_bug, ecto_repos: [UpsertBug.Repo]

config :upsert_bug, UpsertBug.Repo,
  database: "sample",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  port: "5432"

import_config "#{config_env()}.exs"

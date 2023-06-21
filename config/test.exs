import Config

config :upsert_bug, UpsertBug.Repo,
  username: "postgres",
  password: "postgres",
  database: "sample_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

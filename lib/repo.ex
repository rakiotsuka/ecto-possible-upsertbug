defmodule UpsertBug.Repo do
  use Ecto.Repo,
    otp_app: :upsert_bug,
    adapter: Ecto.Adapters.Postgres
end

defmodule UpsertBug.Entity do
  use Ecto.Schema

  schema "entities" do
    field(:a, :string, read_after_writes: true)
    field(:b, :string, read_after_writes: true)

    timestamps()
  end
end

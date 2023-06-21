defmodule UpsertBug.Repo.Migrations.CreateEntitiesTable do
  use Ecto.Migration

  def change do
    create table(:entities) do
      add :a, :string
      add :b, :string

      timestamps()
    end
  end
end

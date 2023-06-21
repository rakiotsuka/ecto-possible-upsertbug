defmodule UpsertBug do
  @moduledoc """
  Documentation for `UpsertBug`.
  """

  alias UpsertBug.Entity
  alias UpsertBug.Repo

  def without_returning_true(original) do
    %Entity{}
    |> Ecto.Changeset.change(%{id: original.id, a: "1"})
    |> Repo.insert!(
      on_conflict: {:replace_all_except, [:a]},
      conflict_target: [:id]
    )
  end

  def with_returning_true(original) do
    %Entity{}
    |> Ecto.Changeset.change(%{id: original.id, a: "1"})
    |> Repo.insert!(
      on_conflict: {:replace_all_except, [:a]},
      conflict_target: [:id],
      returning: true
    )
  end

  def with_replace(original) do
    %Entity{}
    |> Ecto.Changeset.change(%{id: original.id, a: "1"})
    |> Repo.insert!(
      on_conflict: {:replace, [:a, :updated_at]},
      conflict_target: [:id],
      returning: true
    )
  end
end

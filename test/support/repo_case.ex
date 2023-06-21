defmodule UpsertBug.RepoCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      alias UpsertBug.Repo

      import Ecto
      import Ecto.Query
      import UpsertBug.RepoCase

      # and any other stuff
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(UpsertBug.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(UpsertBug.Repo, {:shared, self()})
    end

    :ok
  end
end

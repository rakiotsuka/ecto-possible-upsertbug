defmodule UpsertBugTest do
  use UpsertBug.RepoCase

  alias UpsertBug.Entity
  alias UpsertBug.Repo

  setup do
    original =
      %Entity{}
      |> Ecto.Changeset.change(%{a: "a", b: "b"})
      |> Repo.insert!()

    %{original: original}
  end

  test "Given `%{a: 1}` as attr, when using `{:replace, fields}`, then do not update `:b` to null",
       %{original: original} do
    assert %{b: "b"} = UpsertBug.with_replace(original)
  end

  test "Given `%{a: 1}` as attr, when using `{:replace_all_except, fields}`, then do update `:b` to null",
       %{original: original} do
    assert %{b: nil} = UpsertBug.without_returning_true(original)
  end

  test "Given `%{a: 1}` as attr, when using `{:replace_all_except, fields}, returning: true`, then do not update `:b` to null",
       %{original: original} do
    assert %{b: nil} = UpsertBug.with_returning_true(original)
  end
end

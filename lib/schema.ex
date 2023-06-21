defmodule UpsertBug.Schema do
  @moduledoc """
  Additions to `Ecto.Schema`
  """

  defmacro __using__(_) do
    quote do
      use Ecto.Schema

      @timestamps_opts [type: :naive_datetime]

      @primary_key {:id, Ecto.UUID, autogenerate: true}
      @foreign_key_type :binary_id
    end
  end
end

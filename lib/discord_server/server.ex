defmodule Server do
  use Ecto.Schema

  schema "servers" do
    field(:id, :string)
    field(:name, :string)
    field(:key, :string)
  end
end

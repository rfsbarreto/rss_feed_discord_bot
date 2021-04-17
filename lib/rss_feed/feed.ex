defmodule Feed do
  use Ecto.Schema

  schema "feeds" do
    field(:name, :string)
    field(:url, :string)
    field(:active, :boolean, default: true)
  end
end

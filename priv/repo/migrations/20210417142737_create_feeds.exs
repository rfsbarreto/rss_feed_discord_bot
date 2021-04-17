defmodule RssFeedDiscordBot.Repo.Migrations.CreateFeeds do
  use Ecto.Migration

  def change do
    create table("feeds") do
      add(:name, :string)
      add(:url, :string)
      add(:active, :boolean)
    end
  end
end

defmodule RssFeedDiscordBot.Repo do
  use Ecto.Repo,
    otp_app: :rss_feed_discord_bot,
    adapter: Ecto.Adapters.Postgres
end

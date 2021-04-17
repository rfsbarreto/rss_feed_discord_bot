import Config

config :rss_feed_discord_bot, ecto_repos: [RssFeedDiscordBot.Repo]

config :nostrum,
  token: System.get_env("BOT_TOKEN")

config :rss_feed_discord_bot, RssFeedDiscordBot.Repo, url: System.get_env("DATABASE_URL")

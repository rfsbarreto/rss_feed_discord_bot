import Config

config :rss_feed_discord_bot, ecto_repos: [RssFeedDiscordBot.Repo]

config :nostrum,
  token: System.get_env("BOT_TOKEN")

config :rss_feed_discord_bot, RssFeedDiscordBot.Repo,
  database: System.get_env("DB_NAME"),
  username: System.get_env("DB_USERNAME"),
  password: System.get_env("DB_PASSWORD"),
  hostname: System.get_env("DB_HOSTNAME")


config :rss_feed_discord_bot, Oban, 
  repo: RssFeedDiscordBot.Repo,
  plugins: [Oban.Plugins.Prunner]
  queues: [default: 1]

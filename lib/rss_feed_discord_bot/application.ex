defmodule RssFeedDiscordBot.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  alias DiscordBot.Consumer
  alias RssFeedDiscordBot.Repo
  alias Feed.Consumer, as: FeedConsumer

  @impl true
  def start(_type, _args) do
    children = [
      Consumer,
      Repo,
      {Oban, oban_config()},
      {RssWatcher,
       url: "https://jovemnerd.com.br/nerdbunker/feed/", callback: &FeedConsumer.consume_post/1}
      # Starts a worker by calling: RssFeedDiscordBot.Worker.start_link(arg)
      # {RssFeedDiscordBot.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: RssFeedDiscordBot.Supervisor]
    Supervisor.start_link(children, opts)
  end

  defp oban_config() do
    Application.fetch_env!(:rss_feed_discord_bot, Oban)
  end
end

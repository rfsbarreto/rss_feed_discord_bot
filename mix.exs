defmodule RssFeedDiscordBot.MixProject do
  use Mix.Project

  def project do
    [
      app: :rss_feed_discord_bot,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :timex],
      mod: {RssFeedDiscordBot.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:nostrum, "~> 0.4"},
      {:rss_watcher, "~> 0.1.0"},
      {:dotenv, "~> 3.0.0", only: [:dev, :test]},
      {:ecto_sql, "~> 3.0"},
      {:postgrex, ">= 0.15.0"},
      # For HTTP requests
      {:tesla, "~> 1.2.1"},
      {:plug_cowboy, "~> 2.0"},
      # For RSS parsing
      {:fiet, "~> 0.2.1"},
      # For timestamp parsing
      {:timex, "~> 3.0"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end

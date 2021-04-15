defmodule RssFeedDiscordBotTest do
  use ExUnit.Case
  doctest RssFeedDiscordBot

  test "greets the world" do
    assert RssFeedDiscordBot.hello() == :world
  end
end

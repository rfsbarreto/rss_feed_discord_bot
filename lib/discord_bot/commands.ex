defmodule DiscordBot.Commands do
  alias DiscordBot.Publisher

  def handle("ph!ping", channel_id) do
    channel_id
    |> Publisher.send_message("!pong")
  end

  def handle("ph!critico", channel_id) do
    msg = "Existe 50% de chance de PH Santos ser o melhor crítico de cinema do mundo"

    channel_id
    |> Publisher.send_message(msg)
  end

  def handle("ph!add_feed", feed_url, channel_id) do
  end

  def handle(_, _), do: :ignore
end

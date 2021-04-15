defmodule RssFeedDiscordBot.Consumer do
  use Nostrum.Consumer

  alias Nostrum.Api

  def start_link do
    Consumer.start_link(__MODULE__)
  end

  def handle_event({:MESSAGE_CREATE, msg, _ws_state}) do
    handle(msg.content, msg.channel_id)
  end

  def handle_event(_event), do: :noop

  defp handle("!ping", channel_id) do
    channel_id
    |> Api.create_message("!pong")
  end

  defp handle(_, _), do: :ignore
end

defmodule DiscordBot.Consumer do
  use Nostrum.Consumer

  alias DiscordBot.Commands

  def start_link do
    Consumer.start_link(__MODULE__)
  end

  def handle_event({:MESSAGE_CREATE, msg, _ws_state}) do
    Commands.handle(msg.content, msg.channel_id)
  end

  def handle_event(_event), do: :noop
end

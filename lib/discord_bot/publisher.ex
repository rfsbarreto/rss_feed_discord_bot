defmodule DiscordBot.Publisher do
  alias Nostrum.Api

  def send_message(channel_id, msg) do
    channel_id
    |> Api.create_message(msg)
  end
end

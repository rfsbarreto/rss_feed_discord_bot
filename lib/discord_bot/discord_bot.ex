defmodule DiscordBot do
  alias DiscordBot.Publisher

  defdelegate send_message(channel_id, msg), to: Publisher
end

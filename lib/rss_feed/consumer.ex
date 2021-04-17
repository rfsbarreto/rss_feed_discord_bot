defmodule Feed.Consumer do
  alias DiscordBot

  def consume_post(%RssWatcher.Feed.Item{link: url, title: title, published_at: published_at}) do
    804_435_915_270_520_863
    |> DiscordBot.send_message(
      "Título: #{title} \n publicado: #{convert_to_brazil_timezone(published_at)} \n link: #{url}"
    )
  end

  defp convert_to_brazil_timezone(date_time),
    do: DateTime.shift_zone!(date_time, "America/Maceio")
end

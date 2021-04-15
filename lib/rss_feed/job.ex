defmodule RssFeed.Job do
  use Oban.Worker, queue: :default

  @impl Oban.Worker
  def perform(args) do
    IO.puts "rodou"
  end
end

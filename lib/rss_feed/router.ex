defmodule RssFeed.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  match _ do
    send_resp(conn, 200, ":ok")
  end
end

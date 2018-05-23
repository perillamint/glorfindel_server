defmodule GlorfindelServerWeb.PageController do
  use GlorfindelServerWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

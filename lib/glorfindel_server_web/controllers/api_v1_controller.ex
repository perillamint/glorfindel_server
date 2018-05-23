defmodule GlorfindelServerWeb.ApiV1Controller do
  use GlorfindelServerWeb, :controller

  def getTargets(conn, _params) do
    render conn, "targets.json", targets: []
  end
end

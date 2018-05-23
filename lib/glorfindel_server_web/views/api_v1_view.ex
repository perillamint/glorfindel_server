defmodule GlorfindelServerWeb.ApiV1View do
  use GlorfindelServerWeb, :view

  def render("targets.json", %{targets: targets}) do
    targets
  end
end

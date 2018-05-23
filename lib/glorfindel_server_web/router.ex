defmodule GlorfindelServerWeb.Router do
  use GlorfindelServerWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", GlorfindelServerWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api/v1", GlorfindelServerWeb do
    pipe_through :api

    get "/targets", ApiV1Controller, :getTargets
  end

  # Other scopes may use custom stacks.
  # scope "/api", GlorfindelServerWeb do
  #   pipe_through :api
  # end
end

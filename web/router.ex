defmodule Ecommerce.Router do
  use Ecommerce.Web, :router
  use Addict.RoutesHelper

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

  scope "/", Ecommerce do
    pipe_through :browser # Use the default browser stack

    get "/", WelcomeController, :index
  end
  scope "/" do
    addict :routes
  end  

  # Other scopes may use custom stacks.
  # scope "/api", Ecommerce do
  #   pipe_through :api
  # end
end

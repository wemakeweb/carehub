defmodule Carehub.Router do
  use Phoenix.Router

  pipeline :graphql do
    plug Carehub.Context
  end

  scope "/api" do
    pipe_through :graphql
    forward "/", Absinthe.Plug, schema: Carehub.Schema
  end
end

defmodule Carehub.Router do
  use Phoenix.Router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/", GraphQL.Plug, schema: {TestSchema, :schema}
  end
end

defmodule Carehub.Schema.Types do
  use Absinthe.Schema.Notation

  object :user do
    field :id, :id
    field :name, :string
    field :hub, :string
  end
end

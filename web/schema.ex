defmodule Carehub.Schema do
  use Absinthe.Schema
  import_types Carehub.Schema.Types

  query do
    field :users, list_of(:user) do
      resolve &Carehub.UserResolver.all/2
    end
  end

end

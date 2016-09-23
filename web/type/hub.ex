defmodule Carehub.Type.Hub do
  alias GraphQL.Type.{ObjectType, String, Boolean}

  def type do
    %ObjectType{
      name: "Hub",
      fields: %{
        id: %{type: %String{}},
        name: %{type: %String{}},
        code: %{type: %String{}},
        open: %{type: %Boolean{}},
        owner: %{
          type: Carehub.Type.User
        }
      },
    }
  end
end

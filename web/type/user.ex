defmodule Carehub.Type.User do
  alias GraphQL.Type.{ObjectType, String, Int}

  def type do
    %ObjectType{
      name: "User",
      fields: %{
        id: %{type: %Int{}},
        username: %{type: %String{}},
        email: %{type: %String{}},
        hub: %{
          type: Carehub.Type.Hub
        }
      },
    }
  end
end

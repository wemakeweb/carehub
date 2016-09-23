defmodule Schema do
  alias GraphQL.Type.{ObjectType, List, NonNull, ID, String, Int, Boolean}
  alias Carehub.Resolver
  alias Carehub.Type

  def schema do
    %GraphQL.Schema{
      query: %GraphQL.Type.ObjectType{
        name: "RootQueryType",
        fields: %{
          user: %{
            type: Type.User,
            args: %{
              id: %{ type: %ID{} }
            },
            resolve: &Resolver.User.getID/3
          },
          hub: %{
            type: Type.Hub,
            resolve: &Resolver.Hub.getID/3,
          }
        }
      }
    }
  end
end

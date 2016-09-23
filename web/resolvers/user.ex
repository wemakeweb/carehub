defmodule Carehub.Resolver.User do
  alias Carehub.Models.{User}

  def all(_args, _info) do
    {:ok, Carehub.Repo.all(User)}
  end

  def getID(_source, %{id: id}, _info) do
    Carehub.Models.User |> Carehub.Repo.get(id)
  end
end

defmodule Carehub.UserResolver do
  def all(_args, _info) do
    {:ok, Carehub.Repo.all(User)}
  end
end

defmodule Carehub.Models.Hub do
  use Ecto.Schema

  schema "hub" do
   field :name, :string
   field :code, :string
   field :open, :boolean
   has_one :owner, Carehub.Models.User
  end
end

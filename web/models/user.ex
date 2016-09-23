defmodule Carehub.Models.User do
  use Ecto.Schema

  schema "user" do
   field :username, :string
   field :email, :string
   belongs_to :hub, Carehub.Models.Hub
 end
end

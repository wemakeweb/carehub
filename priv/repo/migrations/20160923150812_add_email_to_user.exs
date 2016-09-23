defmodule Carehub.Repo.Migrations.AddEmailToUser do
  use Ecto.Migration

  def change do
    alter table(:user) do
      add :email, :string
    end
  end
end

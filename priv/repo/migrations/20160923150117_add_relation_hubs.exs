defmodule Carehub.Repo.Migrations.AddRelationHubs do
  use Ecto.Migration

  def change do
    create table(:hub) do
      add :name, :string
      add :code, :string
      add :open, :boolean
      add :owner, references(:user)
    end

    alter table(:user) do
      add :hub_id, references(:hub)
    end
  end
end

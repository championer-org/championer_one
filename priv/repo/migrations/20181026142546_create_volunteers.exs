defmodule ChampionerOne.Repo.Migrations.CreateVolunteers do
  use Ecto.Migration

  def change do
    create table(:volunteers) do
      add :name, :string
      add :github_username, :string

      timestamps()
    end

    create unique_index(:volunteers, [:github_username])
  end
end

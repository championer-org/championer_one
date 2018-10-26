defmodule ChampionerOne.Volunteers.Volunteer do
  use Ecto.Schema
  import Ecto.Changeset
  @derive {Phoenix.Param, key: :github_username}


  schema "volunteers" do
    field :github_username, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(volunteer, attrs) do
    volunteer
    |> cast(attrs, [:name, :github_username])
    |> validate_required([:name, :github_username])
    |> unique_constraint(:github_username)
  end
end

defmodule ChampionerOneWeb.VolunteerController do
  use ChampionerOneWeb, :controller

  alias ChampionerOne.Volunteers
  alias ChampionerOne.Volunteers.Volunteer

  def index(conn, _params) do
    volunteers = Volunteers.list_volunteers()
    render(conn, "index.html", volunteers: volunteers)
  end

  def new(conn, _params) do
    changeset = Volunteers.change_volunteer(%Volunteer{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"volunteer" => volunteer_params}) do
    case Volunteers.create_volunteer(volunteer_params) do
      {:ok, volunteer} ->
        conn
        |> put_flash(:info, "Volunteer created successfully.")
        |> redirect(to: volunteer_path(conn, :show, volunteer))
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    volunteer = Volunteers.get_volunteer!(id)
    render(conn, "show.html", volunteer: volunteer)
  end

  def edit(conn, %{"id" => id}) do
    volunteer = Volunteers.get_volunteer!(id)
    changeset = Volunteers.change_volunteer(volunteer)
    render(conn, "edit.html", volunteer: volunteer, changeset: changeset)
  end

  def update(conn, %{"id" => id, "volunteer" => volunteer_params}) do
    volunteer = Volunteers.get_volunteer!(id)

    case Volunteers.update_volunteer(volunteer, volunteer_params) do
      {:ok, volunteer} ->
        conn
        |> put_flash(:info, "Volunteer updated successfully.")
        |> redirect(to: volunteer_path(conn, :show, volunteer))
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", volunteer: volunteer, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    volunteer = Volunteers.get_volunteer!(id)
    {:ok, _volunteer} = Volunteers.delete_volunteer(volunteer)

    conn
    |> put_flash(:info, "Volunteer deleted successfully.")
    |> redirect(to: volunteer_path(conn, :index))
  end
end

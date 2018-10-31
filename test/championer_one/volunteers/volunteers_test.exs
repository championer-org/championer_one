defmodule ChampionerOne.VolunteersTest do
  use ChampionerOne.DataCase

  alias ChampionerOne.Volunteers

  describe "volunteers" do
    alias ChampionerOne.Volunteers.Volunteer

    @valid_attrs %{github_username: "some github_username", name: "some name"}
    @update_attrs %{github_username: "some updated github_username", name: "some updated name"}
    @invalid_attrs %{github_username: nil, name: nil}

    def volunteer_fixture(attrs \\ %{}) do
      {:ok, volunteer} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Volunteers.create_volunteer()

      volunteer
    end

    test "list_volunteers/0 returns all volunteers" do
      volunteer = volunteer_fixture()
      assert Volunteers.list_volunteers() == [volunteer]
    end

    test "get_volunteer!/1 returns the volunteer with given id" do
      volunteer = volunteer_fixture()
      assert Volunteers.get_volunteer!(volunteer.github_username) == volunteer
    end

    test "create_volunteer/1 with valid data creates a volunteer" do
      assert {:ok, %Volunteer{} = volunteer} = Volunteers.create_volunteer(@valid_attrs)
      assert volunteer.github_username == "some github_username"
      assert volunteer.name == "some name"
    end

    test "create_volunteer/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Volunteers.create_volunteer(@invalid_attrs)
    end

    test "update_volunteer/2 with valid data updates the volunteer" do
      volunteer = volunteer_fixture()
      assert {:ok, volunteer} = Volunteers.update_volunteer(volunteer, @update_attrs)
      assert %Volunteer{} = volunteer
      assert volunteer.github_username == "some updated github_username"
      assert volunteer.name == "some updated name"
    end

    test "update_volunteer/2 with invalid data returns error changeset" do
      volunteer = volunteer_fixture()
      assert {:error, %Ecto.Changeset{}} = Volunteers.update_volunteer(volunteer, @invalid_attrs)
      assert volunteer == Volunteers.get_volunteer!(volunteer.github_username)
    end

    test "delete_volunteer/1 deletes the volunteer" do
      volunteer = volunteer_fixture()
      assert {:ok, %Volunteer{}} = Volunteers.delete_volunteer(volunteer)
      assert_raise Ecto.NoResultsError, fn -> Volunteers.get_volunteer!(volunteer.github_username) end
    end

    test "change_volunteer/1 returns a volunteer changeset" do
      volunteer = volunteer_fixture()
      assert %Ecto.Changeset{} = Volunteers.change_volunteer(volunteer)
    end
  end
end

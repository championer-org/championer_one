defmodule ChampionerOne.ChatRoomsTest do
  use ChampionerOne.DataCase

  alias ChampionerOne.ChatRooms

  describe "messages" do
    alias ChampionerOne.ChatRooms.Message

    @valid_attrs %{body: "some body", name: "some name"}
    @update_attrs %{body: "some updated body", name: "some updated name"}
    @invalid_attrs %{body: nil, name: nil}

    def message_fixture(attrs \\ %{}) do
      {:ok, message} =
        attrs
        |> Enum.into(@valid_attrs)
        |> ChatRooms.create_message()

      message
    end

    test "list_messages/0 returns all messages" do
      message = message_fixture()
      assert ChatRooms.list_messages() == [message]
    end

    test "get_message!/1 returns the message with given id" do
      message = message_fixture()
      assert ChatRooms.get_message!(message.id) == message
    end

    test "create_message/1 with valid data creates a message" do
      assert {:ok, %Message{} = message} = ChatRooms.create_message(@valid_attrs)
      assert message.body == "some body"
      assert message.name == "some name"
    end

    test "create_message/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = ChatRooms.create_message(@invalid_attrs)
    end

    test "update_message/2 with valid data updates the message" do
      message = message_fixture()
      assert {:ok, message} = ChatRooms.update_message(message, @update_attrs)
      assert %Message{} = message
      assert message.body == "some updated body"
      assert message.name == "some updated name"
    end

    test "update_message/2 with invalid data returns error changeset" do
      message = message_fixture()
      assert {:error, %Ecto.Changeset{}} = ChatRooms.update_message(message, @invalid_attrs)
      assert message == ChatRooms.get_message!(message.id)
    end

    test "delete_message/1 deletes the message" do
      message = message_fixture()
      assert {:ok, %Message{}} = ChatRooms.delete_message(message)
      assert_raise Ecto.NoResultsError, fn -> ChatRooms.get_message!(message.id) end
    end

    test "change_message/1 returns a message changeset" do
      message = message_fixture()
      assert %Ecto.Changeset{} = ChatRooms.change_message(message)
    end
  end
end

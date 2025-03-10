defmodule Agroconnect.AccountsTest do
  use Agroconnect.DataCase

  alias Agroconnect.Accounts

  describe "roles" do
    alias Agroconnect.Accounts.Role

    import Agroconnect.AccountsFixtures

    @invalid_attrs %{name: nil, description: nil, deleted_at: nil}

    test "list_roles/0 returns all roles" do
      role = role_fixture()
      assert Accounts.list_roles() == [role]
    end

    test "get_role!/1 returns the role with given id" do
      role = role_fixture()
      assert Accounts.get_role!(role.id) == role
    end

    test "create_role/1 with valid data creates a role" do
      valid_attrs = %{name: "some name", description: "some description", deleted_at: ~U[2025-03-08 18:02:00Z]}

      assert {:ok, %Role{} = role} = Accounts.create_role(valid_attrs)
      assert role.name == "some name"
      assert role.description == "some description"
      assert role.deleted_at == ~U[2025-03-08 18:02:00Z]
    end

    test "create_role/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_role(@invalid_attrs)
    end

    test "update_role/2 with valid data updates the role" do
      role = role_fixture()
      update_attrs = %{name: "some updated name", description: "some updated description", deleted_at: ~U[2025-03-09 18:02:00Z]}

      assert {:ok, %Role{} = role} = Accounts.update_role(role, update_attrs)
      assert role.name == "some updated name"
      assert role.description == "some updated description"
      assert role.deleted_at == ~U[2025-03-09 18:02:00Z]
    end

    test "update_role/2 with invalid data returns error changeset" do
      role = role_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_role(role, @invalid_attrs)
      assert role == Accounts.get_role!(role.id)
    end

    test "delete_role/1 deletes the role" do
      role = role_fixture()
      assert {:ok, %Role{}} = Accounts.delete_role(role)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_role!(role.id) end
    end

    test "change_role/1 returns a role changeset" do
      role = role_fixture()
      assert %Ecto.Changeset{} = Accounts.change_role(role)
    end
  end
end

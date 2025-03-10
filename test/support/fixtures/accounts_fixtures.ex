defmodule Agroconnect.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Agroconnect.Accounts` context.
  """

  @doc """
  Generate a role.
  """
  def role_fixture(attrs \\ %{}) do
    {:ok, role} =
      attrs
      |> Enum.into(%{
        deleted_at: ~U[2025-03-08 18:02:00Z],
        description: "some description",
        name: "some name"
      })
      |> Agroconnect.Accounts.create_role()

    role
  end
end

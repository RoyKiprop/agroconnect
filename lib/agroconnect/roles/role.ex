defmodule Agroconnect.Roles.Role do
  use Ecto.Schema

  import Ecto.Changeset

  schema "roles" do
    field(:name, :string)
    field(:description, :string)
    field(:deleted_at, :utc_datetime)

    timestamps()
  end

  def changeset(role, params \\ %{}) do
    role
    |> cast(params, [:name, :description, :deleted_at])
    |> validate_required([:name])
    |> validate_length(:name, min: 3, max: 25)
    |> validate_length(:description, min: 5, max: 256)
    |> unique_constraint([:name, :deleted_at])
  end

  def changeset_without_deleted_at(role, params \\ %{}) do
    role
    |> cast(params, [:name, :description])
    |> validate_required([:name])
    |> validate_length(:name, min: 3, max: 25)
    |> validate_length(:description, min: 5, max: 256)
    |> unique_constraint([:name, :deleted_at])
  end
end

defmodule Agroconnect.Repo.Migrations.CreateBookingsTable do
  use Ecto.Migration

  def change do
    create table(:bookings) do
      add :user_id, references(:users, on_delete: :restrict), null: false
      add :vet_id, references(:users, on_delete: :restrict), null: false
      add :date, :date, null: false
      add :start_time, :utc_datetime, null: false
      add :end_time, :utc_datetime, null: false
      add :status, :string, default: "pending", null: false
      add :animal_type, :string
      add :notes, :text
      add :deleted_at, :utc_datetime
      timestamps()
    end

    create index(:bookings, [:user_id])
    create index(:bookings, [:vet_id])

    create index(:bookings, [:start_time, :vet_id])
  end
end

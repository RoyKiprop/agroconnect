defmodule Agroconnect.Repo.Migrations.CreateOpeningHours do
  use Ecto.Migration

  def change do
    create table(:opening_hours) do
      add :day_of_week, :integer
      add :start_time, :time
      add :end_time, :time
      add :vet_id, references(:users, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:opening_hours, [:vet_id])
  end
end

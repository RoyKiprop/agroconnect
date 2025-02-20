defmodule Agroconnect.Repo.Migrations.CreateProfilesTable do
  use Ecto.Migration

  def change do
    create table(:profiles) do
      add :profile_picture, :string,
        default:
          "https://res.cloudinary.com/dakiak4mc/image/upload/v1708163548/download__1_-removebg-preview_1_lj8c20.png"

      add :cover_picture, :string,
        default:
          "https://res.cloudinary.com/dakiak4mc/image/upload/v1708163548/download__1_-removebg-preview_1_lj8c20.png"

      add :address, :string
      add :country, :string
      add :county, :string
      add :city, :string
      add :postal_code, :string
      add :specialization, :string
      add :latitude, :string
      add :longitude, :string
      add :is_approved, :boolean, default: false, null: false
      add :license_number, :string
      add :certificates, :string
      add :is_individual, :boolean, default: true, null: false
      add :deleted_at, :utc_datetime

      add :user_id, references(:users, on_delete: :delete_all), null: false

      timestamps(type: :utc_datetime)
    end

    create index(:profiles, [:user_id])
    create unique_index(:profiles, [:license_number], where: "license_number IS NOT NULL")
  end
end

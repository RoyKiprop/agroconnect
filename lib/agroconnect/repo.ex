defmodule Agroconnect.Repo do
  use Ecto.Repo,
    otp_app: :agroconnect,
    adapter: Ecto.Adapters.Postgres
end

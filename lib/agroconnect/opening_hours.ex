defmodule Agroconnect.OpeningHours do
  @moduledoc """
  The OpeningHours context.
  """

  import Ecto.Query, warn: false
  alias Agroconnect.Repo

  alias Agroconnect.OpeningHours.OpeningHour

  @doc """
  Returns the list of opening_hours.

  ## Examples

      iex> list_opening_hours()
      [%OpeningHour{}, ...]

  """
  def list_opening_hours do
    Repo.all(OpeningHour)
  end

  @doc """
  Gets a single opening_hour.

  Raises `Ecto.NoResultsError` if the Opening hour does not exist.

  ## Examples

      iex> get_opening_hour!(123)
      %OpeningHour{}

      iex> get_opening_hour!(456)
      ** (Ecto.NoResultsError)

  """
  def get_opening_hour!(id), do: Repo.get!(OpeningHour, id)

  @doc """
  Creates a opening_hour.

  ## Examples

      iex> create_opening_hour(%{field: value})
      {:ok, %OpeningHour{}}

      iex> create_opening_hour(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_opening_hour(attrs \\ %{}) do
    %OpeningHour{}
    |> OpeningHour.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a opening_hour.

  ## Examples

      iex> update_opening_hour(opening_hour, %{field: new_value})
      {:ok, %OpeningHour{}}

      iex> update_opening_hour(opening_hour, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_opening_hour(%OpeningHour{} = opening_hour, attrs) do
    opening_hour
    |> OpeningHour.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a opening_hour.

  ## Examples

      iex> delete_opening_hour(opening_hour)
      {:ok, %OpeningHour{}}

      iex> delete_opening_hour(opening_hour)
      {:error, %Ecto.Changeset{}}

  """
  def delete_opening_hour(%OpeningHour{} = opening_hour) do
    Repo.delete(opening_hour)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking opening_hour changes.

  ## Examples

      iex> change_opening_hour(opening_hour)
      %Ecto.Changeset{data: %OpeningHour{}}

  """
  def change_opening_hour(%OpeningHour{} = opening_hour, attrs \\ %{}) do
    OpeningHour.changeset(opening_hour, attrs)
  end
end

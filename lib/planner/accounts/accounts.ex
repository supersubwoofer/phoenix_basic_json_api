defmodule Planner.Accounts do
  alias Planner.Repo
  alias Planner.Accounts.User

  def list_users do
    Repo.all(User)
  end

  def get_user(id) do
    Repo.get!(User, id)
  end

  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end
end
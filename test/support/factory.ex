defmodule Planner.Factory do
  use ExMachina.Ecto, repo: Planner.Repo
  alias Planner.Accounts.User

  def user_factory do
    %User{
      email: "unique@email",
      encrypted_password: "encrypted_password"
    }
  end
end
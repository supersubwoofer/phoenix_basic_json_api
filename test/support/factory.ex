defmodule Planner.Factory do
  use ExMachina.Ecto, repo: Planner.Repo

  def user_factory do
    %Planner.User{
      email: "unique email",
      encrypted_password: "encrypted password"
    }
  end
end
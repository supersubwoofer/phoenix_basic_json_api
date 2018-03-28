defmodule MyApp.Factory do
  use ExMachina.Ecto, repo: MyApp.Repo
  alias MyApp.Accounts.User

  def user_factory do
    %User{
      email: "unique@email",
      encrypted_password: "encrypted_password"
    }
  end
end
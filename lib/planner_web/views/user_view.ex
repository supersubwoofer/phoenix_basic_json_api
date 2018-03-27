defmodule PlannerWeb.UserView do
  use PlannerWeb, :view

  def render("index.json", %{users: users}) do
    %{
      users: Enum.map(users, &user_json/1)
    }
  end
  
  def render("show.json", %{user: user}) do
    %{user: user_json(user)}
  end

  def user_json(user) do
    %{
      email: user.email,
      encrypted_password: user.encrypted_password
    }
  end
end
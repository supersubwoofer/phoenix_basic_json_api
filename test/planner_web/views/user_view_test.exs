defmodule PlannerWeb.UserViewTest do
  use ModelCase
  import PlannerWeb.Factory
  alias PlannerWeb.UserView

  test "user_json" do
    user = insert(:todo)

    rendered_user = UserView.user_json(user)

    assert rendered_user == %{
      email: user.email,
      encrypted_password: user.encrypted_password,
      inserted_at: user.inserted_at,
      updated_at: user.updated_at
    }
  end

  test "index.json" do
    user = insert(:user)

    rendered_users = UserView.render("index.json", %{users: [user]})

    assert rendered_users == %{
      users: [UserView.user_json(user)]
    }
  end

  test "show.json" do
    user = insert(:user)

    rendered_user = UserView.render("show.json", %{user: user})

    assert rendered_user == %{
      user: UserView.user_json(user)
    }
  end
end
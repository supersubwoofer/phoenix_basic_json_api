defmodule PlannerWeb.UserControllerTest do
  use PlannerWeb.ConnCase

  test "#index renders a list of users" do
    conn = build_conn()
    user = insert(:user)

    conn = get conn, user_path(conn, :index)

    assert json_response(conn, 200) == render_json("index.json", todos: [todo])
  end

  test "#show renders a single user" do
  conn = build_conn()
    user = insert(:user)

    conn = get conn, user_path(conn, :show, user)

    assert json_response(conn, 200) == render_json("show.json", user: user)
  end

  defp render_json(template, assigns) do
    assigns = Map.new(assigns)

    Planner.UserView.render(template, assigns)
    |> Poison.encode!
    |> Poison.decode!
  end
end
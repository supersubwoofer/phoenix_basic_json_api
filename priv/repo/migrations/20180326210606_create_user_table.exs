defmodule MyApp.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def up do
    create table(:users) do
      add :email, :string, null: false
      add :encrypted_password, :string, null: false

      timestamps
    end

    create unique_index(:users, [:email])
  end

  def down do
    drop table("users")
  end
end

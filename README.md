[![Build Status](https://travis-ci.org/supersubwoofer/phoenix_basic_json_api.svg?branch=master)](https://travis-ci.org/supersubwoofer/phoenix_basic_json_api)

# MyApp

Create a basic Phoenix User JSON API [1][2][3]

## Descriptions

Steps:

1. Define Context
    * accounts
        * accounts.ex
        * user.ex
2. Write Tests !!!
    1. UserControllerTest
    2. UserViewTest
3. Create User module (schema) |> create migration file |> database migration
4. Seed users to database if necessary
5. Create Accounts module (context) as business logic API
6. Add new route |> create UserController |> create UserView

## To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Reference

* [1] Paul Smith, (2017) [Building and testing a Phoenix JSON API](https://robots.thoughtbot.com/building-a-phoenix-json-api)
* [2] Chris McCord (2017) [Phoenix 1.3.0 released](http://phoenixframework.org/blog/phoenix-1-3-0-released)
* [3] David Bernheisel (2017) [Lessons From Using Phoenix 1.3](https://robots.thoughtbot.com/lessons-from-using-phoenix-1-3#experience)
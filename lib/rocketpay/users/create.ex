defmodule Rocketpay.Users.Create do

  alias Rocketpay.{Repo, User}


  def call(params) do
    params
    |> User.changeset(params)
    |> Repo.insert()
  end
end

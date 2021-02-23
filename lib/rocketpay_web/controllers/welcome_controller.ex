defmodule RocketpayWeb.WelcomeController do
  use RocketpayWeb, :controller


  def index(connection, _params)do
    text(connection, "Welcome to the rocketpay API")
  end

end

class HomeController < ApplicationController
  skip_before_action :authorized #only for dev purposes

  def index
    render json: {
      name: "td-backend",
      version: "1.0",
      status: "running",
      message: "Welcome to the API for TweedleDoo. /items and /users are freely available to view (for now)."
    }
  end

end

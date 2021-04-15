class AuthenticationController < ApplicationController

  skip_before_action :authorized, only: [:login]

  def login
    @user = User.find_by(username: user_login_params[:username])
    if @user && @user.authenticate(user_login_params[:password])
        token = encode_token({ user_id: @user.id })
        render json: { id: @user.id, username: @user.username, jwt: token, logged: true }, status: :accepted
    else
      render json: { message: "Authentication Failed." }
    end
  end

  private

  def user_login_params
    params.require(:user).permit(:username, :password)
  end

end

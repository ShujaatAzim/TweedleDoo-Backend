class UsersController < ApplicationController

  skip_before_action :authorized, only: [:create, :index, :show] #these are skipped for now, will remove later (only leaving create)

  def index
    @users = User.all
    render json: UserSerializer.new(@users).to_serialized_json
  end

  def show
    @user = User.find(params[:id])
    render json: UserSerializer.new(@user).to_serialized_json
  end
  
  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token({ user_id: @user.id })
      render json: { username: @user.username, jwt: @token, logged: true }, status: :created
    else
      render json: { error: "Invalid user creation credentials" }, status: :not_acceptable
    end
  end

  def profile
    render json: { user: current_user, lists: current_user.lists }, status: :accepted
  end

  private

  def user_params
    params.require(:user).permit(:username, :password) #will add :password_confirmation later
  end

end

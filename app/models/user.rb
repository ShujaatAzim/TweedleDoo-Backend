class User < ApplicationRecord

  has_secure_password

  validates :email, presence: true, uniqueness: true

  def create
    @user = User.new(user_params)
    
    if @user.save
      payload = { user_id: @user.id }
      token = create_token(payload)
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

end

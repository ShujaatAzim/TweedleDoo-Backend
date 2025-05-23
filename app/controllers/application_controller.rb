class ApplicationController < ActionController::API

  before_action :authorized

  def auth_header 
    request.headers['Authorization']
  end


  def secret
    ENV['SECRET_KEY_BASE'] || Rails.application.credentials.secret_key_base
  end


  def encode_token(payload)
    JWT.encode(payload, secret)
  end


  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, secret, true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end

  # auth requests will follow the "headers: { Authorizarion: `Bearer <token>` }" format

end

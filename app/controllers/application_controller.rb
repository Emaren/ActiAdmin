class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def create
    @user = User.new(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
  end

end

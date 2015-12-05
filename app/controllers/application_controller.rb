class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_user
    unless user_signed_in?
      redirect_to new_session_path, alert: "please sign in!"
    end
  end

  def current_user
    @current_user ||= User.find_by_id session[:user_id] if session[:user_id]
  end

  helper_method :current_user

  def user_signed_in?
    current_user.present?
  end

  helper_method :user_signed_in?

end

#fazer o current_user_bg, current_user_agent e current_user_director, cada um baseado no boolean nill, true e false.

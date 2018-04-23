class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :user
  before_action :logged_in?, only: [:index, :destroy]
  def hello
  end
  def user
    session[:name]
  end

  def logged_in?
    if !session[:name]
     redirect_to login_path
   end
  end
end

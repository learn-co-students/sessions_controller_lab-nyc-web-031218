class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]

    if session[:name] == nil
      redirect_to login_path
    elsif session[:name] == ""
      redirect_to login_path
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end
end

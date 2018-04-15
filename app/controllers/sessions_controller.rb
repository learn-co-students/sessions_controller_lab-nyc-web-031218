class SessionsController < ApplicationController

  def new


    render 'sessions/new.html.erb'

  end

  def create
    # byebug
    session[:name] = params[:name]

    redirect_to '/'
  end

  def destroy

  end

end

class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user
      session[:userid] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash[:error] = "Wrong Username."
      redirect_to root_url
    end
  end

  def destroy
    session[:userid] = nil
    redirect_to root_url, notice: "Logged Out"
  end
end

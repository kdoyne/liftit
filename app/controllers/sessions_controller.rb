class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to(user_path(user))
    else
      redirect_to("/sessions")
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to root_path
  end

end
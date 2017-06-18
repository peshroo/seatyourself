class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])

      # Send a cookie to user's browser
      session[:user_id] = user.id

      flash[:notice] = 'Logged in!'
      redirect_to root_url
    else
      flash.now[:alert] = 'Try again!'
      render :new
    end

  end

  def destroy
    # Clear the session cookie
    session[:user_id] = nil

    flash[:notice] = "Logged out!"
    redirect_to root_url
  end
end

class SessionsController < ApplicationController

  def new
   
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Good job! You just logged in the website."
      redirect_to user_path(user)
    else
      flash.now[:danger] = "Something wrong..."
      render 'new'
    end
  end
  
  def destroy
    session[:user_id] = nil
    flash[:success] = "You just logged out, good bye ;)"
    redirect_to root_path
  end

end
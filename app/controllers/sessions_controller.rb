class SessionsController < ApplicationController

  def create
    user = User.find_by_email(user_params[:email])
    if user && user.authenticate(user_params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Successfully logged in!"
    else
      flash[:error] = "Incorrect email or password. Please try again."
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Successfully logged out!"
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end

end

class UsersController < ApplicationController

# add new user to database
  def create
      user = User.new(user_params)
      if user.save
        session[:user_id] = user.id
        flash[:notice] = "Successfully signed up!"
        redirect_to root_page
      else
        flash[:error] = user.errors.full_messages.join(', ')
        redirect_to root_page
      end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
end

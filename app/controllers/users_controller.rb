class UsersController < ApplicationController

  def new
    # redirect user if already logged in
    if current_user
      redirect_to root_path
    else
      render :new
    end
  end

# add new user to database
  def create
    # redirect user if already logged in
    if current_user
      redirect_to root_path
    else
      user = User.new(user_params)
      if user.save
        session[:user_id] = user.id
        flash[:notice] = "Successfully signed up!"
        redirect_to root_path
      else
        flash[:error] = user.errors.full_messages.join(', ')
        redirect_to signup_path
      end
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

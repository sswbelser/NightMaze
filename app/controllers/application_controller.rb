class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # checks to see if user is logged in currently
  def logged_in?
    current_user != nil
  end

  # allows us to use `current_user` and 'logged_in?' in views
  helper_method :current_user, :logged_in?
  
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  before_filter :require_login

  private

  def require_login
  	unless session[:char_name]
  		flash[:error] = "You must be logged in to access this page."
  		redirect_to new_session_path
  	end
  end
end

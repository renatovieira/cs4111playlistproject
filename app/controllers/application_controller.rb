class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  

  def logged_in_user
  	puts "logged_in_user?"
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
  
  # before_filter :set_admin_status
  # def set_admin_status
  #   @logged_in_user = User.find(1)
  #   @is_admin = @logged_in_user.admin
  # end
end

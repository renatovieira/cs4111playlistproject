class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :set_admin_status
  def set_admin_status
    @logged_in_user = User.find(3)
    @is_admin = @logged_in_user.admin
  end
end

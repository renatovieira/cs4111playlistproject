module SessionsHelper
	 # Logs in the given user.
  def log_in(user)
    session[:username] = user.username
  end

  def current_user
    @current_user ||= User.find_by(username: session[:username])
  end

  def logged_in?
    !current_user.nil?
  end

  def is_admin?
  	current_user.admin
  end
end

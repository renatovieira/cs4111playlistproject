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
    if current_user.nil?
      return false
    else
      if current_user.admin
        return true
      else
        return false
      end
    end
  end

  def current_user?(user)
    user == current_user
  end

  def log_out
    session.delete(:username)
    @current_user = nil
  end

end

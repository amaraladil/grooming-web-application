module SessionsHelper
	# Logs in the given user.
  def log_in(user)
    session[:tbl_user_id] = user.id
  end

    # Returns true if the given user is the current user.
  def current_user?(user)
    if current_user.userType == 1 || current_user.userType == 2 #Admin or managers can access
      user == user
    else
      user == current_user
    end
  end
    
  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= TblUser.find_by(id: session[:tbl_user_id])
  end
    
     # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
    
    # Logs out the current user.
  def log_out
    session.delete(:tbl_user_id)
    @current_user = nil
  end
end

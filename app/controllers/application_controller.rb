class ApplicationController < ActionController::Base
  before_action :set_current_user!

  def set_current_user!
    if session[:user_id]
      Current.user = User.find(session[:user_id])
    end
  end

  def require_user_logged_in!
    redirect_to login_path, alert: 'Sign in' if Current.user.nil?
  end

  def check_if_admin!
    if Current.user.nil? || Current.user&.role != 'ADMIN'
      redirect_to root_path, status: 301, alert: 'You are not an admin'
    end
  end
end

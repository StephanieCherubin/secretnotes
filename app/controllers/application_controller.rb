class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  def current_user
    #if current_user exists
    #get the current user from the session hash, remember it in @current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def require_logged_in
    return true if current_user

    return redirect_to root_path
    #go to the login screen if there is no current user
  end
end

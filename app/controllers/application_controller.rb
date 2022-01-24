class ApplicationController < ActionController::Base

  include ApplicationHelper
  helper_method :logged_in?
  helper_method :current_admin
  private 

  def require_login
    unless logged_in?
      redirect_to admin_path, notice: 'You have to be logged in'
    end
  end
  
end

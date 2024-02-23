class ApplicationController < ActionController::Base
  before_action :authenticate_user_or_admin!

  private

  def authenticate_user_or_admin!
    if request.path.starts_with?('/admin') # Check if the request is for the admin panel
      authenticate_admin_user!
    else
      authenticate_user!
    end
  end
end

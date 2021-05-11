class SecuredController < ApplicationController

  def logged_in_using_omniauth?
    redirect_back(fallback_location: '/') unless session[:userinfo].present?
    if session[:userinfo].present? == false
    flash.alert = "You are not authorized to do that."
    end

  end
    def admin_logged_in_using_omniauth?
    redirect_back(fallback_location: '/') unless admin_user_logged_in?
    if admin_user_logged_in? == false
    flash.alert = "You are not authorized to do that. You need to be logged in as an Admin."
    end
  end
end
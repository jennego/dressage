class SecuredController < ApplicationController

    before_action :logged_in_using_omniauth?


  def logged_in_using_omniauth?
    redirect_back(fallback_location: '/') unless session[:userinfo].present?
    if session[:userinfo].present? == false
    flash.alert = "You are not authorized to do that."
    end
  end
end
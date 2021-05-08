class ApplicationController < ActionController::Base
# def fallback_index_html
#   render :file => 'public/index.html'
# end

helper_method :user_logged_in?
helper_method :admin_user_logged_in?

def user_logged_in?
  return session[:userinfo].present?
end

def admin_user_logged_in?
    return session[:userinfo].present? && session[:userinfo]['https://dressage-tests.herokuapp.com/roles'].include?("Admin")
end

end

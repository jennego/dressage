class ApplicationController < ActionController::Base
# def fallback_index_html
#   render :file => 'public/index.html'
# end

helper_method :user_logged_in?
helper_method :admin_user_logged_in?, :current_user, :find_user_by_auth0_id 


def user_logged_in?
  return session[:userinfo].present?
end

def admin_user_logged_in?
    return session[:userinfo].present? && session[:userinfo]['https://dressage-tests.herokuapp.com/roles'].include?("Admin")
end

def current_user
  session[:userinfo]
end

  def find_user_by_auth0_id 
    if user_logged_in?
        auth_id = session[:userinfo]['sub']
        return User.find_by_auth0_id(auth_id)
    end
  end


end

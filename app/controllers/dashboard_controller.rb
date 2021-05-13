class DashboardController < SecuredController

  def index
    # session[:userinfo] was saved earlier on Auth0Controller#callback
    @user = session[:userinfo]
  end

  def joinus
    @user = session[:userinfo]
  end
end
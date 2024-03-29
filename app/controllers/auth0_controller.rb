class Auth0Controller < ApplicationController
# import active record user 


  def callback
    # OmniAuth stores the informatin returned from Auth0 and the IdP in request.env['omniauth.auth'].
    # In this code, you will pull the raw_info supplied from the id_token and assign it to the session.
    # Refer to https://github.com/auth0/omniauth-auth0#authentication-hash for complete information on 'omniauth.auth' contents.
    auth_info = request.env['omniauth.auth']
    session[:userinfo] = auth_info['extra']['raw_info']

  
    # Redirect to the URL you want after successful auth
    redirect_to '/dashboard'


    if find_user_by_auth0_id
      @internal_user = find_user_by_auth0_id
      print @user
    else 
      print 'create a new user'
     auth_id = session[:userinfo]['sub']
    @internal_user = User.create({auth0_id: auth_id, name: session[:userinfo]['name'] })
    end
  end

  def failure
    # Handles failed authentication -- Show a failure page (you can also handle with a redirect)
    # @error_msg = request.params['message']
    redirect_to root_path
  end

   def logout
    reset_session
    redirect_to logout_url
  end

  def logout_url
    request_params = {
      returnTo: root_url,
      client_id: Rails.application.credentials.auth0[:client_id]
    }

    URI::HTTPS.build(host: Rails.application.credentials.auth0[:domain], path: '/v2/logout', query: to_query(request_params)).to_s
  end

  def to_query(hash)
    hash.map { |k, v| "#{k}=#{CGI.escape(v)}" unless v.nil? }.reject(&:nil?).join('&')
  end

end
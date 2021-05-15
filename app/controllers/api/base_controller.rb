class Api::BaseController < ApplicationController

helper_method :find_api_user_by_auth0_id
    def find_api_user_by_auth0_id(auth_id)  
        if User.find_by_auth0_id(auth_id).present?
            User.find_by_auth0_id(auth_id)
        else  
            User.create({auth0_id: auth_id})
        end
    end
  
  # protect_from_forgery with: :null_session
  # include ActionController::Cookies 

  #   def authenticate_cookie
  #   token = cookies.signed[:jwt]
  #   decoded_token = CoreModules::JsonWebToken.decode(token)
  #   if decoded_token
  #     user = User.find_by(id: decoded_token["user_id"])
  #   end
  #   if user then return true else render json: {status: 'unauthorized', code: 401} end
  # end

  # def current_user
  #   token = cookies.signed[:jwt]
  #   decoded_token = CoreModules::JsonWebToken.decode(token)
  #   if decoded_token
  #     user = User.find_by(id: decoded_token["user_id"])
  #   end
  #   if user then return user else return false end
  # end

  end
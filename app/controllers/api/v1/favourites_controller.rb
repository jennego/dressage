class Api::V1::FavouritesController < Api::BaseController

  include Secured
  skip_before_action :authenticate_request!, only: [:index]
  skip_before_action :verify_authenticity_token
  before_action :get_current_user

  helper_method :find_test

  def create 
    dressage_test = DressageTest.find params[:dressage_test_id]
    test_id = params[:dressage_test_id].to_i

    if currently_favourited(test_id) == false
    favourite = Favourite.new(user: @user , dressage_test: dressage_test)
      if favourite.save
        render json: favourite
      else
        render json: { errors: favourite.errors.full_messages }
      end
    else
      render json: { errors: 'already favourited'}
    end

  end

  def destroy 
      favourite = Favourite.find params[:id]
      favourite.destroy

      if favourite.destroy
        render json: {'item deleted': favourite}
      else
        render json: { errors: favourite.errors.full_messages }
      end

  end

  def index 
    @favourites = @user.favourites
  end
  
  def get_current_user
    auth0_id = params[:user]
    @user = find_api_user_by_auth0_id(auth0_id)
  end

  def currently_favourited(id)
    @user.favourites.any? {|f| f['dressage_test_id'] == id}
  end

  def find_test(test_id)
    DressageTest.find(test_id)
  end

  def find_api_user_by_auth0_id(auth_id)  
        if User.find_by_auth0_id(auth_id).present?
            User.find_by_auth0_id(auth_id)
        else  
            User.create({auth0_id: auth_id})
        end
  end
  

end

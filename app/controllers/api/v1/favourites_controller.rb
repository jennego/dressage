class Api::V1::FavouritesController < Api::BaseController

  include Secured
  skip_before_action :authenticate_request!, only: [:index]
  before_action :get_current_user
  skip_before_action :verify_authenticity_token

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
    @test =  DressageTest
  end
  
  def get_current_user
    auth0_id = params[:user]
    @user = find_api_user_by_auth0_id(auth0_id)
  end

  def currently_favourited(id)
    @user.favourites.any? {|f| f['dressage_test_id'] == id}
  end

end

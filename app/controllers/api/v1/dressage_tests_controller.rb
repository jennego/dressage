class Api::V1::DressageTestsController < Api::BaseController

  include Secured
    skip_before_action :authenticate_request!, only: [:index, :show]

    helper_method :find_favourite

  def index
    # @dressage_tests = DressageTest.order(created_at: :desc).limit(20)
    @dressage_tests = DressageTest.order_by_level
    @auth0_id = params[:user]


    # this will render views/api/v1/index.json.jbuilder
  end

  def show
    @test = DressageTest.find params[:id]

    if params[:user].present? 
    auth0_id = params[:user]
    @user = find_api_user_by_auth0_id(auth0_id)
    @favourites =  @test.favourites.find_by_user_id @user
    end
    

    # Because we installed ActiveModel Serializer then the default behaviour is
    # to use the serializer instead of the default `to_json` method that comes
    # with ActiveRecrod
  end

  def find_favourite(test_id)
    DressageTest.find(test_id).favourites
  end


end

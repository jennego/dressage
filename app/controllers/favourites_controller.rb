class FavouritesController < ApplicationController

   def create
    current_internal_user = find_user_by_auth0_id 
    dressage_test = DressageTest.find params[:dressage_test_id]
    favourite = Favourite.new(user: current_internal_user , dressage_test: dressage_test)
    if  user_logged_in? == false
      head :unauthorized # this will send empty HTTP response with :unauthorized
                       # response code
    elsif favourite.save
      redirect_to dressage_test, notice: 'Thanks for faving!'
    else
      redirect_to dressage_test, notice: 'you already faved'
    end
  end

  def destroy
      favourite = Favourite.find params[:id]
  if  user_logged_in?
      favourite.destroy
      redirect_to favourite.dressage_test, notice: 'removed from fav list 🖖'
    else
      head :unauthorized
    end
  end

  
end

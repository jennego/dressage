class AddRefsToFavourites < ActiveRecord::Migration[6.1]
  def change
    add_reference :favourites, :user, null: false, foreign_key: true
    add_reference :dressage_tests, :favourites, foreign_key: true, index: true
  end
end

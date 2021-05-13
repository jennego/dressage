class Swap < ActiveRecord::Migration[6.1]
  def change
    add_reference :favourites, :dressage_tests, null: false, foreign_key: true
    remove_column :dressage_tests, :favourites_id
  end
end

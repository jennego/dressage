class FavDressageTests < ActiveRecord::Migration[6.1]
  def change
    create_table :favourites do |t|
      t.references :dressage_test, foreign_key: true, index: true
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end

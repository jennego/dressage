class AddPdfsToDressageTests < ActiveRecord::Migration[6.1]
  def change
     create_table :test_links do |t|
      t.string :url
      t.string :name
      t.references :dressage_test, foreign_key: true, index: true

      t.timestamps
    end
    
  end
end

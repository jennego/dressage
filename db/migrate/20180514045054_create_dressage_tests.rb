class CreateDressageTests < ActiveRecord::Migration[5.2]
  def change
    create_table :dressage_tests do |t|
      t.string :org_name
      t.string :name
      t.string :level
      t.integer :year
       
      t.timestamps
    end
  end
end

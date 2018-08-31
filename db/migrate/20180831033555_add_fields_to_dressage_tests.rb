class AddFieldsToDressageTests < ActiveRecord::Migration[5.2]
  def change
      add_column :dressage_tests, :introduce, :string
      add_column :dressage_tests, :purpose, :string 
      add_column :dressage_tests, :current, :boolean 
  end
end

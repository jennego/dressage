class Addnotes < ActiveRecord::Migration[5.2]
  def change
    add_column :dressage_tests, :note, :text
    add_column :dressage_tests, :subtitle, :string 
  end
end

class AddAuth0ToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :auth9_id, :string  
  end
end

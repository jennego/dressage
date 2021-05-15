class AddAuth0IndexToUser < ActiveRecord::Migration[6.1]
  def change
    add_index :users, :auth0_id, unique: true
  end
end

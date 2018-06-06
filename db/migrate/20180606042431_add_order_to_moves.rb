class AddOrderToMoves < ActiveRecord::Migration[5.2]
  def change
    add_column :moves, :num, :integer
  end
end

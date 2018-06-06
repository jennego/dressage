class CreateMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :moves do |t|
      t.string :letter
      t.string :move
      t.references :dressage_test, foreign_key: true, index: true

      t.timestamps
    end
  end
end

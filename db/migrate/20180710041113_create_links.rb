class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :url
      t.string :linkname
      t.references :dressage_test, foreign_key: true, index: true

      t.timestamps
    end
  end
end

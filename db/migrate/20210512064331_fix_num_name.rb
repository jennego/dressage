class FixNumName < ActiveRecord::Migration[6.1]
  def change
    rename_column :moves, :num, :order
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end

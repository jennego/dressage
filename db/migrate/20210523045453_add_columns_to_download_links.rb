class AddColumnsToDownloadLinks < ActiveRecord::Migration[6.1]
  def change
    add_column :download_links, :type, :string
    add_column :download_links, :size, :string
    add_column :download_links, :note, :string

    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end

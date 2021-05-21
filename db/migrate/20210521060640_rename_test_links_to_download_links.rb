class RenameTestLinksToDownloadLinks < ActiveRecord::Migration[6.1]
  def change
    rename_table :test_links, :download_links
  end
end

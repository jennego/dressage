class DownloadLink < ApplicationRecord
  belongs_to :dressage_test, class_name: "DressageTest", foreign_key: "dressage_test_id"
end

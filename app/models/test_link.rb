class TestLink < ApplicationRecord
  belongs_to :dressage_test, class_name: "dressage_test", foreign_key: "dressage_test_id"
end

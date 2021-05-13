class Favourite < ApplicationRecord
  belongs_to :user, class_name: "user", foreign_key: "user_id"
  belongs_to :dressage_test, class_name: "dressage_test", foreign_key: "dressage_test_id"

end

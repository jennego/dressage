class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :dressage_test

  validates_presence_of :user_id, :dressage_test_id
end

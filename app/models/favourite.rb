class Favourite < ApplicationRecord
  has_many :dressage_tests, dependent: :destroy
  belongs_to :user, foreign_key: "user_id"

  accepts_nested_attributes_for :dressage_tests

end

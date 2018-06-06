class DressageTest < ApplicationRecord
  has_many :moves, dependent: :destroy
  accepts_nested_attributes_for :moves
end

class DressageTest < ApplicationRecord
  has_many :moves, dependent: :destroy
  accepts_nested_attributes_for :moves
  include PgSearch
  pg_search_scope :search_by_test, against: [:name, :org_name, :level, :year],
  using: {
    tsearch: {
      prefix: true,
      highlight: {
        start_sel: '<b>',
        stop_sel: '</b>',
      }
    }
  }
end

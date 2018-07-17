class DressageTest < ApplicationRecord
  has_many :moves, dependent: :destroy
  has_many :links, dependent: :destroy

  accepts_nested_attributes_for :moves
  accepts_nested_attributes_for :links

  include PgSearch
  pg_search_scope :search_by_test, against: [:org_name, :year, :level, :name],
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

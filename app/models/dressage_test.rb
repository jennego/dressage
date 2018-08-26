class DressageTest < ApplicationRecord
  has_many :moves, dependent: :destroy
  has_many :links, dependent: :destroy

  accepts_nested_attributes_for :moves
  accepts_nested_attributes_for :links

  filterrific(
    default_filter_params: { sorted_by: 'created_at_desc' },
    available_filters: [
      :search_query,
      :sorted_by,
      :filter_by_level
    ]
  )

   scope :search_query, lambda { |query|
    return nil  if query.blank?
    # condition query, parse into individual keywords
    terms = query.to_s.downcase.split(/\s+/)
    # replace "*" with "%" for wildcard searches,
    # append '%', remove duplicate '%'s
    terms = terms.map { |e|
      (e.gsub('*', '%') + '%').gsub(/%+/, '%')
    }
    # configure number of OR conditions for provision
    # of interpolation arguments. Adjust this if you
    # change the number of OR conditions.
    num_or_conditions = 3
    where(
      terms.map {
        or_clauses = [
          "LOWER(dressage_tests.level) LIKE ?",
          "LOWER(dressage_tests.name) LIKE ?",
          "dressage_tests.year::TEXT LIKE ?",
        ].join(' OR ')
        "(#{ or_clauses })"
      }.join(' AND '),
      *terms.map { |e| [e] * num_or_conditions }.flatten
    )
  }

  scope :sorted_by, lambda { |sort_option|
    # extract the sort direction from the param value.
    direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
    case sort_option.to_s
    when /^created_at_/
      order("dressage_tests.created_at #{ direction }")
    else
      raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
    end
  }

  
scope :filter_by_level, lambda {|level|
  where("dressage_tests.level = " + "'" + level + "'")
}


  # This method provides select options for the `sorted_by` filter select input.
  # It is called in the controller as part of `initialize_filterrific`.
  def self.options_for_sorted_by
    [
      ['Name (a-z)', 'name_asc'],
      ['Registration date (newest first)', 'created_at_desc'],
      ['Registration date (oldest first)', 'created_at_asc'],
      ['hello', 'hello']
    ]
  end

   def self.options_for_filter_by_level
    order('LOWER(name)').map { |e| [e.level] }.uniq!
  end

end

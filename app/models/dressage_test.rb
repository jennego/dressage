class DressageTest < ApplicationRecord
  has_many :moves, dependent: :destroy
  has_many :links, dependent: :destroy

  accepts_nested_attributes_for :moves
  accepts_nested_attributes_for :links

  filterrific(
    default_filter_params: { sorted_by: 'level_' },
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
  when /^year_/
    # Simple sort on the created_at column.
    # Make sure to include the table name to avoid ambiguous column names.
    # Joining on other tables is quite common in Filterrific, and almost
    # every ActiveRecord table has a 'created_at' column.
    order("dressage_tests.year #{ direction }")
  when /^name_/
    # Simple sort on the name colums
    order("LOWER(dressage_tests.name) #{ direction }")
  when /^level_/
   order("CASE Level
        WHEN 'Walk/Trot' THEN 6
        WHEN 'Training' THEN 5
        WHEN 'First Level'THEN 4
        WHEN 'Second Level' THEN 3 
        WHEN 'Third Level' THEN 2
        WHEN 'FOURTH LEVEL' THEN 1
        ELSE 0
       END DESC, name ASC")
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
      ['By level (low-high)', 'level_'],
      ['By Year (least recent)', 'year_asc'],
      ['By Year (most recent)', 'year_desc']

     
    ]
  end

   def self.options_for_filter_by_level
    order('LOWER(name)').map { |e| [e.level] }.uniq!
  end

end

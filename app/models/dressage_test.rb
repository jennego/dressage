class DressageTest < ApplicationRecord
  has_many :moves, dependent: :destroy
  has_many :links, dependent: :destroy

  accepts_nested_attributes_for :moves
  accepts_nested_attributes_for :links

   include AlgoliaSearch

  algoliasearch   index_name: "dev_DRESSAGE" do
        attributes :name, :org_name, :level, :current
    # Use all default configuration
  end

#   def shortname(name)
# shortname = []
# name.split(' ').each do |s|
#    shortname.push(s[0])
# end
# return shortname.join()
# end


#   filterrific(
#     default_filter_params: { sorted_by: 'level_desc' },
#     default_filter_params: { current_filter: 'is_current_' },
#     available_filters: [
#       :search_query,
#       :sorted_by,
#       :filter_by_level,
#       :filter_by_org_name,
#       :filter_by_year,
#       :current_filter
#     ]
#   )

#   scope :search_query, lambda { |query|
#     return nil  if query.blank?
#     # condition query, parse into individual keywords
#     terms = query.to_s.downcase.split(/\s+/)
#     # replace "*" with "%" for wildcard searches,
#     # append '%', remove duplicate '%'s
#     terms = terms.map { |e|
#       (e.gsub('*', '%') + '%').gsub(/%+/, '%')
#     }
#     # configure number of OR conditions for provision
#     # of interpolation arguments. Adjust this if you
#     # change the number of OR conditions.
#     num_or_conditions = 3
#     where(
#       terms.map {
#         or_clauses = [
#           "LOWER(dressage_tests.level) LIKE ?",
#           "LOWER(dressage_tests.name) LIKE ?",
#           "dressage_tests.year::TEXT LIKE ?",
#         ].join(' OR ')
#         "(#{ or_clauses })"
#       }.join(' AND '),
#       *terms.map { |e| [e] * num_or_conditions }.flatten
#     )
#   }

  
# scope :sorted_by, lambda { |sort_option|
#   # extract the sort direction from the param value.
#   direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
#   case sort_option.to_s
#   when /^year_/
#     # Simple sort on the created_at column.
#     # Make sure to include the table name to avoid ambiguous column names.
#     # Joining on other tables is quite common in Filterrific, and almost
#     # every ActiveRecord table has a 'created_at' column.
#     order("dressage_tests.year #{ direction }")
#   when /^name_/
#     # Simple sort on the name colums
#     order("LOWER(dressage_tests.name) #{ direction }")
#   when /^level_/
#     order("CASE Level
#         WHEN 'Walk/Trot' THEN 6
#         WHEN 'Training' THEN 5
#         WHEN 'First Level'THEN 4
#         WHEN 'Second Level' THEN 3 
#         WHEN 'Third Level' THEN 2
#         WHEN 'Fourth Level' THEN 1
#         ELSE 0
#         END #{ direction }, name ASC")
#   else
#     raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
#   end
# }

  
# scope :filter_by_level, lambda {|level|
#   where("dressage_tests.level = " + "'" + level + "'")
# }

# scope :filter_by_org_name, lambda {|org|
#   where("dressage_tests.org_name = " + "'" + org + "'")
# }
# scope :filter_by_year, lambda {|year|
#   where("dressage_tests.year = " + "'" + year.to_s + "'")
# }
  
# scope :current_filter, lambda { |current_option|

#   case current_option.to_s
#   when /^is_current_/
#     where("dressage_tests.current = true")
#   when /^is_not_current_/
#     where("dressage_tests.current = false")
#   else
#     raise(ArgumentError, "hmm: #{ current_option.inspect }")
#   end
# }

#   # This method provides select options for the `sorted_by` filter select input.
#   # It is called in the controller as part of `initialize_filterrific`.
  
#   def self.options_for_sorted_by
#     [
#       ['By level (low-high)', 'level_desc'],
#       ['By level (high-low)', 'level_asc'],
#       ['By Year (least recent)', 'year_asc'],
#       ['By Year (most recent)', 'year_desc'],
#       ['Name (a-z)', 'name_asc']
#     ]
#   end
  
#   def self.options_for_current_filter
#     [
#       ['Current', 'is_current_'],
#       ['Historical', 'is_not_current_']
#     ]
#   end

#   def self.options_for_filter_by_level
#     order('LOWER(name)').map { |e| [e.level] }.uniq!
#   end

#   def self.options_for_filter_by_org_name
#     order('LOWER(name)').map { |e| [e.org_name] }.uniq!
#   end

#   def self.options_for_filter_by_year
#     order(:year).map { |e| [e.year] }.uniq!
#   end

end

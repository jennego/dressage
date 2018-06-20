json.array! @dressage_tests do |d|
  json.id d.id
  json.year d.year
  json.orgname d.org_name
  json.level d.level
  json.name d.name
  json.full_name d.org_name + ' ' + d.year.to_s + ' ' + d.level + ' ' + d.name
end

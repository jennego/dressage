json.dressage_tests @dressage_tests do |d|
  json.id d.id
  json.year d.year
  json.orgname d.org_name
  json.level d.level
  json.name d.name
  json.subtitle d.subtitle 
  json.introduce d.introduce
  json.purpose d.purpose
  json.note d.note
  json.current d.current
  json.full_name d.org_name + ' ' + d.year.to_s + ' ' + d.level 
  
end



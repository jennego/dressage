json.dressage_tests @dressage_tests do |d|
  json.id d.id
  json.year d.year
  json.orgname d.org_name
  json.level d.level
  json.name d.name
  json.full_name d.org_name + ' ' + d.year.to_s + ' ' + d.level 
        json.links d.links.each do |link| 
        json.linkid link.id
        json.url link.url 
        json.linkname link.linkname 
        end
end



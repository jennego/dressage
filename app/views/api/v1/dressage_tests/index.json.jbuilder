def shortname(name)
shortname = []
name.split(' ').each do |s|
   shortname.push(s[0])
end
return shortname.join()
end


json.dressage_tests @dressage_tests do |d|
  fav = find_favourite(d.id)
  json.id d.id
  json.year d.year
  json.org_name d.org_name
  json.level d.level
  json.name d.name
  json.subtitle d.subtitle 
  json.introduce d.introduce
  json.purpose d.purpose
  json.note d.note
  json.current d.current
  json.full_name shortname(d.org_name) + ' ' + d.year.to_s + ' ' + d.level + ' ' + d.name


  if @auth0_id.present? 
    json.fav fav
    json.is_faved fav.present? 
  end
end



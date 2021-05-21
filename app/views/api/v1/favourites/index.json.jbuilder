  def shortname(name)
shortname = []
name.split(' ').each do |s|
   shortname.push(s[0])
end
return shortname.join()
end

    json.array! @favourites do |fav|

      test = find_test(fav.dressage_test_id)
      
      json.fav_id fav.id 
      json.user_id fav.user_id
      json.dressage_test_id fav.dressage_test_id
      json.short_org_name shortname(test.org_name)
      json.test test
     

      
 
    end


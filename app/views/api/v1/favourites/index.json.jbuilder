 
    json.array! @favourites do |fav|
      json.fav_id fav.id 
      json.user_id fav.user_id
      json.dressage_test_id fav.dressage_test_id
      json.faved_test @test.find(fav.dressage_test_id)
    end


 def shortname(name)
shortname = []
name.split(' ').each do |s|
   shortname.push(s[0])
end
return shortname.join()
end

 
 json.id @test.id
  json.year @test.year
  json.orgname @test.org_name
  json.level @test.level
  json.name @test.name
  json.subtitle @test.subtitle 
  json.introduce @test.introduce
  json.purpose @test.purpose
  json.note @test.note
  json.current @test.current
  json.full_name shortname(@test.org_name) + ' ' + @test.year.to_s + ' ' + @test.level + ' ' + @test.name 

    # json.pdf_links @test.test_links.each do |link| 
    #     json.linkid link.id
    #     json.url link.url 
    #     json.name link.name 
    # end
    
    json.links @test.links.each do |link| 
        json.linkid link.id
        json.url link.url 
        json.linkname link.linkname 
    end

    json.moves @test.moves.order('id ASC').each do |move| 
        json.id move.id
        json.letter move.letter
        json.movement move.move 
    end

    if @user.present? 
        json.is_faved @favourites.present?
        json.favourites @favourites
    end

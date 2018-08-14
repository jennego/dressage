  json.id @test.id
  json.year @test.year
  json.orgname @test.org_name
  json.level @test.level
  json.name @test.name
    json.links @test.links.each do |link| 
        json.linkid link.id
        json.url link.url 
        json.linkname link.linkname 
    end
    json.moves @test.moves.each do |move| 
        json.moveid move.id
        json.letter move.letter
        json.movement move.move 
    end


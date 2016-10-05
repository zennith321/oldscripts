=begin
journey_hash = {
    "word1" => "some ",
    "word2" => "will ",
    "word3" => "WIN",
    "word4" => "LOSE",
    "phrase" => "were born to sing the blues",
    "comma" => ", ",
    "period" => ". "
}
print journey_hash["word1"].capitalize
print journey_hash["word2"]
print journey_hash["word3"].downcase
print journey_hash["comma"]
print journey_hash["word1"]
print journey_hash["word2"]
print journey_hash["word4"].downcase
print journey_hash["period"]
print journey_hash["word1"].capitalize
print journey_hash["phrase"]
print journey_hash["period"]
=end


=begin
movies = Hash.new
movies["Deadpool"] = "Comedy"
movies["Star Wars"] = "SciFi"
movies["Avengers"] = "Action"

print movies[]
=end


hash = Hash.new
3.times {
    print "Please type a red fruit: "
    fruit = gets.chomp
    print "Please type a green vegetable: "
    vegetable = gets.chomp
    hash[fruit] = vegetable
}
puts hash
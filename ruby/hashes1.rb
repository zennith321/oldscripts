=begin
celebs = Hash.new
celebs["Donald"] = "Trump"
celebs["Bernie"] = "Sanders"
celebs["Hillary"] = "Clinton"
print celebs

celebs = Hash["Donald","Trump","Bernie","Sanders","Hillary","Clinton"]
print celebs

celebs = {
    "Donald" => "Trump",
    "Bernie" => "Sanders",
    "Hillary" => "Clinton"
}

=end

=begin
celebs = Hash.new
celebs["Donald"] = "Trump"
celebs["Bernie"] = "Sanders"
celebs["Hillary"] = "Clinton"
celebs.each {|x, y| puts "#{x} #{y}"}
puts
celebs.each {|x, y| puts "#{y}, #{x}"}
=end

=begin
heroes = Hash.new
heroes["Deadpool"] = "You picked Deadpool, he is invincible"
heroes["Iron man"] = "You picked Iron man, he has an awesome mech suit"
heroes.each {|x, y| puts "#{x}"}   #only the keys
loop {
print "What super hero do you want to know more about?: "
user_input = gets.chomp.downcase
break if user_input == "end"
if user_input == "deadpool"
    print heroes["Deadpool"]
    puts
elsif user_input == "iron man"
    print heroes["Iron man"]
    puts
end
puts "Type end to stop the script"
}
=end

input_arr = Array.new
out_hash = Hash.new
loop {
    print "Please type an even number of elements to turn into a hash: "
    user_input = gets.chomp
    break if user_input == "end"
    input_arr.push(user_input)
}
if input_arr.length % 2 == 0
    out_hash = Hash[*input_arr.flatten(1)]
    print input_arr, " "
    print out_hash
    puts
else
    puts "Error: You have an odd number of elements in your array"
end


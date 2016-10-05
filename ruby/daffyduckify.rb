print "Enter what you want to be daffy duckified: "
user_input = gets.chomp.downcase
#puts user_input
=begin
if user_input.include?"s"
    puts "I found at least 1 s."
else
    puts "I found no s's."
end
=end
if user_input.include?"s"
    user_input.gsub!(/s/,"th")
    puts "Your Daffy Duckified string is: #{user_input}"
else
    "There is nothing to be Daffy Duckified."
end
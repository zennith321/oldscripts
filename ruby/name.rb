puts "Please enter your name: "
first_name = gets.chomp.capitalize

puts "Please enter your last name: "
last_name = gets.chomp.capitalize

puts "Please enter your city: "
city = gets.chomp.capitalize

puts "Please enter your province: "
province = gets.chomp.upcase

puts "Your name is #{first_name} #{last_name} and you are from #{city}, #{province}."

if city == "Edmonton"
    
    puts "That is where I am from!"
    
end
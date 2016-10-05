puts "1: Coke"
puts "2: Pepsi"
puts "3: Iced Tea"
puts "4: Water"
puts "5: Dr Pepper"
print "Pick one: "

user_input = gets.chomp.downcase

if user_input == "1"
    puts "You chose Coke"
elsif user_input == "2"
    puts "You chose Pepsi"
elsif user_input == "3"
    puts "you chose Iced Tea"
elsif user_input == "4"
    puts "You chose Water"
elsif user_input == "5"
    puts "You chose Dr Pepper"
else
    puts "Error, here is your money back"
end
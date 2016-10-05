die_roll = 0
die_num = 0
avg_sum = 0
average = 0
roll = 0

loop {
print "Please choose a die: "
user_input = gets.chomp

if user_input == "d3"
    die_roll = 3
    break
elsif user_input == "d4"
    die_roll = 4
    break
elsif user_input == "d6"
    die_roll = 6
    break
elsif user_input == "d8"
    die_roll = 8
    break
elsif user_input == "d10"
    die_roll = 10
    break
elsif user_input == "d12"
    die_roll = 12
    break
elsif user_input == "d20"
    die_roll = 20
    break
elsif user_input == "d100"
    die_roll = 100
    break
end

puts "Please type either d3, d4, d6, d8, d10, d12, d20, or d100"
}

loop {
print "How many times would you like to roll?: "
die_num = gets.chomp.to_i
if die_num >= 1 && die_num < 1000
    break
elsif die_num >= 1000
    puts "That number is too high"
else
    puts "Please type a number greater than 0"
end
}

avg_sum = avg_sum.to_f
die_num = die_num.to_f

for i in (1..die_num)
 roll = rand(1..die_roll)
 print roll, " "
 avg_sum += roll 
end

if die_num > 1
    average = (avg_sum / die_num).round
    puts
    puts "Your average is: #{average}"
end
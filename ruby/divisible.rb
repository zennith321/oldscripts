print "Enter the first number: "
user_input = gets.chomp.to_i

print "Enter the number to check: "
user_div = gets.chomp.to_i

remainder = user_input % user_div


if remainder == 0 
    puts "#{user_input} is divisible by #{user_div}. The remainder is #{remainder}."
elsif remainder >= 1
    puts "#{user_input} is not divisible by #{user_div}. The remainder is #{remainder}."
end

loop {
 print "Please type the number 99: "
 user_input = gets.chomp.to_i
 is_99 = user_input / 99
 if (is_99 == 1)
   puts "Thank you!"
   break
 else
   puts "Please try again"
 end
}

=begin
user_input = 0

until user_input == 99
  print "Please type the number 99: "
  user_input = gets.chomp.to_i
  puts "Please try again"
end
=end

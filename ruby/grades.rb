print "Please enter your grade (0-100): "
grade = gets.chomp.to_i

if grade <= 59 && grade >= 0
    puts "You got an F"
elsif grade >= 60 && grade <= 69
    puts "You got a D"
elsif grade >= 70 && grade <= 79
    puts "You got a C"
elsif grade >= 80 && grade <= 89
    puts "You got a B"
elsif grade >= 90 && grade <= 100
    puts "You got an A"
else
    puts "Error"
end
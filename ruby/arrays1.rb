evenodd = 0
num_list = Array.new
loop {
    print "Please enter and Interger: "
    num_list.push(gets.chomp)
    break if num_list.last == "end"
}
loop {
print "Would you like to see even or odd numbers?: "
evenodd = gets.chomp.downcase
break if evenodd == "even" || "odd"
if evenodd != "even" || "odd"
    puts
    puts "Please type either even or odd"
end
}
num_list.pop
print "Calculating"
3.times {
    print "."
    sleep(1)
}
puts
if evenodd == "odd"
    num_list.each { |num|
        next if num.to_i % 2 == 0
        print num, " "
    }
elsif evenodd == "even"
    num_list.each { |num|
        next if num.to_i % 2 != 0
        print num, " "
    }
else
    puts "Error"
end
puts
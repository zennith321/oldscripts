colourhex = Hash.new
colourhex["Red"] = "#FF0000"
colourhex["Yellow"] = "#FFFF00"
colourhex["Green"] = "#00FF00"
colourhex["Light Blue"] = "#00FFFF"
colourhex["Dark Blue"] = "#0000FF"
colourhex["Black"] = "#000000"
colourhex["Grey"] = "#808080"
colourhex.each {|x,y| puts "#{x} => #{y}"}
loop {
    puts "Do you want to add or delete?"
    print "Type 1 to add, type 2 to delete, or type end to finish: "
    user_input = gets.chomp
    break if user_input == "end"
    if user_input.to_i == 1
        print "Please type a colour and the value, separated by a space: "
        user_array = gets.chomp.split(" ")
        colourhex[user_array[0].capitalize] = user_array[1].upcase
        puts "I have added #{user_array[0]}: #{user_array[1]}"
        colourhex.each {|x,y| puts "#{x} => #{y}"}
    elsif user_input.to_i == 2
       print "Please choose a colour from the list: "
       user_colour = gets.chomp
       if colourhex.has_value?(user_colour.upcase) || colourhex.has_key?(user_colour.capitalize)
           colourhex.delete(user_colour.capitalize)
           colourhex.delete(colourhex.key(user_colour.upcase))
           puts "I have removed #{user_colour}"
       else
           print "Error: colour or hex value not found"
           sleep(2)
           puts
       eand
       colourhex.each {|x,y| puts "#{x} => #{y}"}
       else
           print "Error: no option selected"
           sleep(2)
           puts
    end
}
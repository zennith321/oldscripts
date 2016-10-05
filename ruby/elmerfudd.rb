counter = 0

until counter == 3
    print "Enter a sentence and I will make it sound like Elmer Fudd: "
    user_input = gets.chomp

    if user_input.include?("r") || user_input.include?("l") || user_input.include?("R") || user_input.include?("L")
        user_input.gsub!(/r/,"w")
        user_input.gsub!(/l/,"w")
        user_input.gsub!(/R/,"W")
        user_input.gsub!(/L/,"W")
        puts "Your sentence is: #{user_input}"
    else
        puts "Sorry, nothing to change. Here is your sentence: #{user_input}"
    end
    
counter = counter + 1

end
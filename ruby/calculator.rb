print "Please type your opertation: "
operation = gets.chomp.downcase

print "Type your first number: "
num_1 = gets.chomp.to_f

print "Type your second number: "
num_2 = gets.chomp.to_f

if operation == "+" || "plus" || "add" || "addition"
    output = num_1 + num_2
end

if operation == "-" || "minus" || "subtracion" || "subtract"
    output = num_1 - num_2
end

if operation == "*" || "times" || "multiply"
    output = num_1 * num_2
end

if operation == "/" || "divide" || "division"
    output = num_1 / num_2
end

puts output

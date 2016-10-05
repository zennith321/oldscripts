num_array = [ 1, 0, 0, 1, 1, 1, 1, 0, 0, 1 ] #this array can be any set of numbers
zeroes = 0
num_array.each { |num|
    if num == 0
        zeroes += 1     #increments the variable zeroes if
    end                 #the number it is checking is a zero
}
puts zeroes

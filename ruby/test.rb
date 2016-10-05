=begin
def test
    i = 100
    j = 200
    k = 300
    return i, k, j
end
var = test
puts var
=end

=begin
i = 0
while i < 51
    puts i
    i = i + 1
end
=end

=begin
num = 0
while num < 31
    print num, " "
    num += 2
end
=end

=begin
num = 100
loop do 
    puts "Countdown: #{num}"
    num -= 1
    break if num == -1
end
=end

=begin
for i in -10...11
    i *= -1
    puts i
end
=end

=begin
for i in -5..5
    i *= -1
    i *= 2
    print i, " "
end
=end

=begin
num = -50
loop { 
    puts num
    num += 5
    break if num > 50
}
=end

=begin
for i in 1..100
    next if i % 3 != 0
    print i, " "
end
=end
=begin
my_array = [30, "red", -1, false, 3.14]
my_array.each { |x|
    print x, " "
}
=end
SHIP_HASH = { submarine: 2, destroyer: 3, destroyer: 3, cruiser: 4, aircraftcarrier: 5,}

def print_results
  board_layout = Array.new(10, ".").map{|row| Array.new(10, ".")}
  row_label = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
  column_label = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

  print "\t"
  print row_label.join("\t")
  puts
  board_layout.each_with_index do |row, i|
    print column_label[i]
    print "\t"
    print row.join("\t")
    puts
  end
end

print_results
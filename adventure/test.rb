=begin
list1 = ["Jack","Mike"]
list2 = ["steak","pizza"]

def roll
   num = rand(0..1)
   return num
end

5000.times {
    puts "#{list1[roll]} Ate #{list2[roll]}"
}
=end
time = Time.new
puts time
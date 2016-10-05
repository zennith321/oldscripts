=begin
weather = Hash.new
weather["Sunday"] = 27
weather["Monday"] = 27
weather["Tuesday"] = 29
weather["Wednesday"] = 29
weather["Thursday"] = 18
weather["Friday"] = 21
weather["Saturday"] = 27

print "Please choose a day: "
user_input = gets.chomp.downcase.capitalize
user_input.gsub!(/ /,"")
weather.each { |k,v|
    if k == user_input
        puts v
    end
}
=end

=begin
fruits = Hash.new
fruits["Apple"] = "Red"
vegs = Hash.new
vegs["Celery"] = "Green"
print fruits
print vegs
fruits.merge!(vegs)
print fruits
=end

=begin
fruits = Hash.new
fruits["Apple"] = "Red"
vegs = Hash.new
vegs["Celery"] = "Green"
fruits = fruits.invert
vegs = vegs.invert
print fruits
print vegs
fruits.merge!(vegs)
print fruits
=end
names = Array.new
5.times {
    print "Please type a full name: "
    user_input = gets.chomp.split(" ")
    names[user_input(0)] = user_input(1)
}
print names
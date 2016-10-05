stats = ["Strength","Dexterity","Constitution","Intelligence","Wisdom","Charisma"]
statHash = Hash.new
counter = 0
user_input = ""
yes = "y"
puts "Would you like to roll all stats?"
print "Type y for yes: "
user_input = gets.chomp.downcase
if user_input == yes
    statHash["Strength"] = true
    statHash["Dexterity"] = true
    statHash["Constitution"] = true
    statHash["Intelligence"] = true
    statHash["Wisdom"] = true
    statHash["Charisma"] = true
else
    6.times {
        print "Would you like to roll #{stats[counter]}?: "
        user_input = gets.chomp.downcase
        if user_input == yes
            statHash[stats[counter]] = true
            else
                statHash[stats[counter]] = false
        end
    counter += 1
}
end
=begin
print "rolling"
3.times {
    sleep(1)
    print "."
}
puts
=end
def rollstat
    arr = Array.new
    arr.clear
    4.times {
        roll = rand(1..6)
        arr.push(roll)
    }
    roll = 0
    arr.each {|num|
        roll += num
    }
    return roll
end
counter = 0
endHash = Hash.new
statHash.each { |k,v|
    if statHash[stats[counter]] == true
        endHash[k] = rollstat
    else
        endHash[k] = 0
    end
    counter += 1
}
endHash.each {|k,v|
    endHash.delete_if{|key,value| value == 0}
}
endHash.each{|k,v| puts "#{k} rolled #{v}"}

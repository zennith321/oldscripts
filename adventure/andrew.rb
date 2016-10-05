
# arrays for player = health,spAtk,Atk
opp1 = [60,10,5]

playerDefault = [100,20,10]
#attacks are spAtk and Atk
playerDefaultAtks = ["magic ball","really hard punch"]

puts "A fiesty hipster wants to battle."
sleep(0.5)
puts "Choose your move."
puts "================="

playerDefaultAtks.each_with_index do |i,v|
    puts "#{v} | #{i}"

end

    def selectInput(playerDefaultAtks)
        puts ""
        user_input = gets.chomp
        playerDefaultAtks.each_with_index do |item,index|
        #check scenarios with if's
            if user_input =! index
                puts "incorrect arguement."
                selectInput(playerDefaultAtks)
            elsif user_input == index
                performAttack(v)
            end
        end
        return nil
    end

    def performAttack(attack)
        puts "You used #{attack}"
        #check if attack was spatk or atk
        return nil
    end
    selectInput(playerDefaultAtks)

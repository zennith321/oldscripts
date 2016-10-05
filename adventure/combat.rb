playerAC = 14
enemyAC = 8
playerHealth = 15
enemyHealth = 15
playerDefaultAtks = ["Quarterstaff","Sling"]
user_attacked = false
enemy = "Goblin"
puts "A #{enemy} wants to fight."
sleep(0.5)

def rollDmg
    dmg = 0
    dmg = rand(1..6)
    return dmg
end

def rollToHit
    
    hit = 0
    hit = rand(1..20)
    return hit
end

loop {
    critfail = false
    hit = 0
    dmg = 0
    wepMod = 0
    crit = false
    inputCorrect = false
    user_attacked = false
    enemyAttacked = false
    if enemyHealth <= 0
        puts "You have killed the #{enemy}!"
        break
        elsif playerHealth <= 0
        puts "You have died!"
        break
    end
    puts "Character heath: #{playerHealth} #{enemy} health: #{enemyHealth}"
    puts "Choose your Weapon."
    sleep(0.5)
    puts "================="
    playerDefaultAtks.each_with_index { |i,v|
        puts "#{v} | #{i}"
    }
    
    #checks if user picked a valid attack
    print "what would you like to do?: "
    user_input = gets.chomp
    break if user_input == "end"        #debug
    if user_input == "0" || user_input.downcase == playerDefaultAtks[0].downcase
        playerAtt = playerDefaultAtks[0]
        inputCorrect = true
        wepMod = 2
        elsif user_input == "1" || user_input.downcase == playerDefaultAtks[1].downcase
        playerAtt = playerDefaultAtks[1]
        inputCorrect = true
        wepMod = 1
    end
    
    #player phase
    if inputCorrect == true
        puts "You used #{playerAtt}!"
        sleep(1)
        hit = rollToHit
        puts "You rolled #{hit}"
        sleep(1)
        if hit >= enemyAC     #checks to see if roll is above ac
            if hit == 20
                crit = true
                elsif hit == 1
                critfail = true
            else
                crit = false
            end
            user_attacked = true
        else
            puts "You missed!"
            user_attacked = false
        end
        if crit == true
            dmg = (rollDmg + wepMod) * 2
            puts "You Crit!"
            sleep(1)
        elsif crit == false
            dmg = rollDmg
        end
        if user_attacked == true
            enemyHealth -= dmg
            puts "You did #{dmg} damage!"
            sleep(1.5)
        end
    else
        puts "Error"
        sleep(1)
    end
    hit = 0
    dmg = 0
    crit = false
    critfail = false
    
    #enemy phase
    if inputCorrect == true
        puts "#{enemy} attacked!"
        sleep(1)
        hit = rollToHit
        puts "#{enemy} rolled #{hit}"
        sleep(1)
        if hit >= playerAC
            if hit == 20
                crit = true
                elsif hit == 1
                critfail = true
            else
                crit = false
                critfail = false
            end
            enemyAttacked = true
        else
            puts "#{enemy} missed!"
            sleep(1)
            enemyAttacked = false
        end
        if crit == true
            dmg = rollDmg * 2
            puts "#{enemy} Crit!"
            sleep(1)
        elsif critfail == true
            puts "#{enemy} tripped!"
            sleep(1)
            enemyHealth -= 3
        elsif crit == false && critfail == false
            dmg = rollDmg
        end
        if enemyAttacked == true && critfail == false
            playerHealth -= dmg
            puts "#{enemy} did #{dmg} damage!"
            sleep(1.5)
        end
    end
}
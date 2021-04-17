# Launch of the game
def start
  puts " \n ========== Welcome to the Staircase Game =========="
  puts " \n Press 'Enter' to start the game"
  input = gets.chomp.downcase
  while input != gets.chomp
    puts " Try again !"
    input = gets.chomp.downcase
  end
  puts " You can finally start playing !"
  print "\n"
  puts " ==================================================="
end

# Create a random dice
def dice
  return rand(6) + 1
end

# Determining the system to move forward
def roll_dice(dice)
  if dice == 1
    puts " You fell on dice #{dice}"
    puts " You can back"
    return -1
  elsif dice >= 5
    puts " You fell on dice #{dice}"
    puts " You can advance by 2"
    return 2
  elsif dice == 3 || 4
    puts " You fell on dice #{dice}"
    puts " You can advance by 1"
    return 1
  else
    puts " You fell on dice #{dice}"
    puts " You do nothing"
    return 0
  end
end

# Update the player's position
def position(position)
  puts " You are on step number #{position}"
end

# Make the game stop when the player reaches the step number 10
def is_over?(position)
  if position == 10
    return true
  else
    return false
  end
end

# Main program
def play
  puts start
  # Initialise the player's position
  position = 0
  position(position)
  while(!is_over?(position)) do
    puts " Press 'Enter' to play"
    print ">"
    gets.chomp
    puts " "
    position += roll_dice(dice)
    position(position)
  end
  puts " "
  puts " ========== You won, end of the game =========="
end

play



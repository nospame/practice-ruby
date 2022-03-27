puts "Let's play Rock - Paper - Scissors"
puts "Do you need me to explain the rules?"
input = gets.chomp.downcase
if input == "yes"
  puts "Okay. We'll each select rock, paper or scissors."
  puts "Rock beats scissors, paper beats rock, and scissors beats paper."
  puts "We can play as many or as few games as you like."
  puts "The score will be shown onscreen after each round."
end
player_score = 0
cpu_score = 0
puts "Do you want to play?"
while true
  input = gets.chomp.downcase
  if input != "yes"
    break
  else
    cpu_choice = ["rock", "paper", "scissors"].shuffle
    puts "Enter your selection (rock, paper, or scissors):"
    input = gets.chomp.downcase
    puts "I picked #{cpu_choice[0]}."
    if (input == "rock" && cpu_choice[0] == "paper") ||
    (input == "paper" && cpu_choice[0] == "scissors") ||
    (input == "scissors" && cpu_choice[0] == "rock")
      puts "You lose!"
      cpu_score += 1
    elsif (input == "rock" && cpu_choice[0] == "scissors") ||
    (input == "paper" && cpu_choice[0] == "rock") ||
    (input == "scissors" && cpu_choice[0] == "paper")
      puts "You win."
      player_score += 1
    elsif input != "rock" && input != "paper" && input != "scissors"
      puts "You entered an invalid input."
    else
      puts "It's a draw."
    end  
  puts "Your score is #{player_score}. My score is #{cpu_score}."
  puts "Play again?"
  end
end
if player_score < cpu_score
  puts "It was fun playing. Come back to get beat again anytime."
else
  puts "Thanks for playing."
end
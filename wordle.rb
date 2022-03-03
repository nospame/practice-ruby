# there is a correct, five-letter word (set on backend)
# allows user to input a guess as a string
# there is a place to put that guess (array/variable)
# compares guess to the correct word

# gives feedback
  # checks each individual letter
#   if guess is fully correct the user wins
#   if a letter is fully correct it turns green
#   if a letter is in the word, but in the wrong place, it turns yellow

# user can guess again if they have not won

answer = "GLASS"
answer = answer
guess = ""

6.times do
  puts "Please enter a guess:"
  guess = gets.chomp.upcase
  index = 0
  while index < answer.length
    if answer[index] == guess[index]
      puts "#{guess[index]}: Correct"
    elsif answer.include?(guess[index])
      puts "#{guess[index]}: Placement"
    else
      puts guess[index]
    end
    index += 1
  end 
  if guess == answer
    puts "You win!"
    break
  end
end

if guess != answer
  puts "You lose."
  puts "The word was #{answer}"
end

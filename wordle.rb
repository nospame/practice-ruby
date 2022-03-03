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

word = "PASTA"
word = word.split(//)
guess = []

6.times do
  puts "Please enter a guess:"
  guess = gets.chomp.upcase.split(//)
  if guess == word
    puts "You win!"
    break
  else
    index = 0
    while index < word.length
      if word[index] == guess[index]
        puts "#{guess[index]}: Green"
      elsif word.include?(guess[index])
        puts "#{guess[index]}: Yellow"
      else
        puts guess[index]
      end
      index += 1
    end
  end 
end

if guess != word
  puts "You lose."
  puts "The word was #{word.join}"
end
answer = "PIANO"
guess = ""
turn_count = 0
shareable = []

6.times do
  puts "Please enter a guess:"
  guess = gets.chomp.upcase
  index = 0
  squares = ""
  while index < answer.length
    if answer[index] == guess[index]
      squares[index] = "G"
    elsif answer.include?(guess[index])
      squares[index] = "Y"
    else
      squares[index] = "-"
    end
    index += 1
  end 
  
  turn_count += 1
  shareable << squares
  puts squares

  if guess == answer
    puts "You win!"
    break
  end
end

if guess != answer
  puts "You lose."
  puts "The word was #{answer}"
end

puts "Share your score? (Y/N)"
input = gets.chomp
puts ""
if input.upcase == "Y"
  if guess == answer
    puts "Wordle #{turn_count}/6"
  else
    puts "Wordle #{turn_count}/*"
  end
  puts shareable
end
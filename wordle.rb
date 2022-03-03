answer = "GLASS"
guess = ""

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

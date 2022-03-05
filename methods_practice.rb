# 1. Write a program that asks the user to enter a word, then prints that word with all capital letters.
puts "Please enter a word:"
input_word = gets.chomp
puts input_word.upcase 

# 2. Write a program that asks the user to enter a number, then prints "That's a big number" if the number is greater than 100.
puts "Please enter a number:"
input_number = gets.chomp.to_i
if input_number > 100
  puts "That's a big number"
end

# 3. Write a program that asks the user to enter two numbers, then prints the numbers added together.
input_numbers = []
2.times do
  puts "Please enter a number:"
  input_numbers << gets.chomp.to_i
end
puts input_numbers.sum


# 4. Write a program that asks the user to enter a word, then prints that word in reverse order.
puts "Please enter a word:"
input_word = gets.chomp
puts input_word.reverse

# 5. Write a program that asks the user to enter a number, then prints the number times 10.
puts "Please enter a number:"
input_number = gets.chomp.to_i
puts input_number * 10

# 6. Write a program that asks the user to enter two words, then prints both words on the same line in all capital letters.
input_words = []
2.times do
  puts "Please enter a word:"
  input_words << gets.chomp
end
puts input_words[0].upcase + " " + input_words[1].upcase

# 7. Write a program that asks the user to enter a word, then prints the number of letters in the word.
puts "Please enter a word:"
input_word = gets.chomp
puts input_word.length

# 8. Write a program that asks the user to enter a number, then prints "That's a negative number" if the number is less than 0.
puts "Please enter a number:"
input_number = gets.chomp.to_i
if input_number < 0
  puts "That's a negative number"
end

# 9. Write a program that asks the user to enter two numbers, then prints the two numbers multiplied together.
input_numbers = []
2.times do
  puts "Please enter a number:"
  input_numbers << gets.chomp.to_i
end
puts input_numbers[0] * input_numbers[1]

# 10. Write a program that asks the user to enter a word, then prints "That's a long word" if the word has more than 5 letters.
puts "Please enter a word:"
input_word = gets.chomp
if input_word.length > 5
  puts "That's a long word"
end


# SOLUTIONS: https://gist.github.com/peterxjang/1539a3ad79728ba4fb68dd8d07279c29
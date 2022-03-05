# 1. Write a while loop to print the numbers 1 through 10.
num = 1
while num <= 10
  p num
  num += 1
end

# 2. Write a while loop that prints the word "hello" 5 times.
i = 0
while i < 5
  p "hello"
  i += 1
end

# 3. Write a while loop that asks the user to enter a word and will run forever until the user enters the word "stop"
input_word = ""
while input_word.downcase != "stop"
  puts "Please enter a word:"
  input_word = gets.chomp
end

# 4. Write a while loop that prints the numbers 0 through 100, increasing by 5 each time.
num = 0
while num <= 100
  p num
  num += 5
end

# 5. Write a while loop that prints the number 9000 ten times.
i = 0
while i < 10
  p 9000
  i += 1
end

6. Write a while loop that asks the user to enter a number and will run forever until the user enters a number greater than 10.
input_number = 0
while input_number <= 10
  puts "Please enter a number:"
  input_number = gets.chomp.to_i
end

7. Write a while loop that prints the numbers 50 to 70.
num = 50
while num <= 70
  p num
  num += 1
end

# 8. Write a while loop that prints the phrase "Around the world" 144 times.
i = 0
while i < 144
  p "Around the world"
  i += 1
end

# 9. Write a while loop that asks the user to enter a word and will run forever until the user enters a word with more than 5 letters.
input_word = ""
while input_word.length <= 5
  puts "Please enter a word:"
  input_word = gets.chomp
end


# 10. Write a while loop that prints the even numbers from 2 to 40.
num = 2
while num <= 40
  p num
  num += 2
end


# SOLUTIONS: https://gist.github.com/peterxjang/c4ec0e0f8f6e123d65ada9bf3100068b
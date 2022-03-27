#  1. Start with an array of numbers and compute the sum of all the numbers.
#     For example, [5, 10, 8, 3] becomes 26.
numbers = [5, 10, 8, 3]
p numbers.sum
p numbers.reduce(:+)

sum = 0
numbers.each{|number| sum += number}
p sum

#  2. Start with an array of strings and combine them all into a single string.
#     For example, ["volleyball", "basketball", "badminton"] becomes "volleyballbasketballbadminton".
words = ["volleyball", "basketball", "badminton"]
p words.reduce(:+)

long_word = ""
words.each{|word| long_word += word}
p long_word

#  3. Start with an array of hashes and compute the sum of the prices (from the :price key).
#     For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes 105.
hashes = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
p hashes.reduce(0) {|sum, hash| sum + hash[:price]}

sum = 0
hashes.each{|hash| sum += hash[:price]}
p sum

#  4. Start with an array of numbers and compute the the minimum number.
#     For example, [5, 10, 8, 3, 9] becomes 3.
# look at the numbers
# check the value
# if it's lower, make that the lowest number
# or just sort the numbers and pick the first one
numbers = [5, 10, 8, 3, 9]
p numbers.sort[0]

low_number = numbers[0]
numbers.each{|number| low_number = number if number < low_number}
p low_number

low_number = numbers.reduce do |low, number|
  if number < low
    low = number
  else
    low
  end
end
p low_number


#  5. Start with an array of strings and compute the total length of all the strings.
#     For example, ["volleyball", "basketball", "badminton"] becomes 29.
words = ["volleyball", "basketball", "badminton"]
p words.reduce(:+).length

#  6. Start with an array of hashes and find the hash with the lowest price (from the :price key).
#     For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "pencil", price: 1}.
hashes = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]

lowest_cost = hashes.reduce do |low, hash|
  if hash[:price] < low[:price]
    low = hash
  else
    low
  end
end
p lowest_cost


#  7. Start with an array of numbers and compute product of all the numbers.
#     For example, [5, 10, 8, 3] becomes 1200.

#  8. Start with an array of strings and combine them all into a single string, separated by dashes.
#     For example, ["volleyball", "basketball", "badminton"] becomes "-volleyball-basketball-badminton-".

#  9. Start with an array of hashes and find the hash with the shortest name (from the :name key).
#     For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "book", price: 4}.

# 10. Start with an array of numbers and compute the maximum number.
#     For example, [5, 10, 8, 3] becomes 10.


# SOLUTIONS (using while loop): https://gist.github.com/peterxjang/376c8931a48549889eb3c9bc091e9f43
# SOLUTIONS (using .each shortcut): https://gist.github.com/peterxjang/379c9945774f51027750c59d6e4395df
# SOLUTIONS (using .reduce shortcut): https://gist.github.com/peterxjang/b69183e2d555964ce3936893f423ef35
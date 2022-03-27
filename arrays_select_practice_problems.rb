#  1. Start with an array of numbers and create a new array with only the numbers less than 20.
#     For example, [2, 32, 80, 18, 12, 3] becomes [2, 18, 12, 3].
numbers = [2, 32, 80, 18, 12, 3]
p numbers.select{|number| number < 20}

sub_twenty = []
numbers.each do |number|
  if number < 20
    sub_twenty << number
  end
end
p sub_twenty

#  2. Start with an array of strings and create a new array with only the strings that start with the letter "w".
#     For example, ["winner", "winner", "chicken", "dinner"] becomes ["winner", "winner"].
words = ["winner", "winner", "chicken", "dinner"]
p words.select{|word| word[0] == "w"}

w_words = []
words.each{|word| w_words << word if word[0] == "w"}
p w_words

#  3. Start with an array of hashes and create a new array with only the hashes with prices greater than 5 (from the :price key).
#     For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes [{name: "chair", price: 100}].
hashes = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
p hashes.select{|hash| hash[:price] > 5}

high_priced = []
hashes.each do |hash|
  if hash[:price] > 5
    high_priced << hash
  end
end
p high_priced

#  4. Start with an array of numbers and create a new array with only the even numbers.
#     For example, [2, 4, 5, 1, 8, 9, 7] becomes [2, 4, 8].
numbers = [2, 4, 5, 1, 8, 9, 7]
p numbers.select{|number| number % 2 == 0}

even_numbers = []
numbers.each{|number| even_numbers << number if number % 2 == 0}
p even_numbers

#  5. Start with an array of strings and create a new array with only the strings shorter than 4 letters.
#     For example, ["a", "man", "a", "plan", "a", "canal", "panama"] becomes ["a", "man", "a", "a"].
words = ["a", "man", "a", "plan", "a", "canal", "panama"]
p words.select{|word| word.length < 4}

short_words = []
words.each{|word| short_words << word if word.length < 4}
p short_words

#  6. Start with an array of hashes and create a new array with only the hashes with names shorter than 6 letters (from the :name key).
#     For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes [{name: "chair", price: 100}, {name: "book", price: 4}].
hashes = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
p hashes.select{|hash| hash[:name].length < 6}

short_names = []
hashes.each{|hash| short_names << hash if hash[:name].length < 6}
p short_names

#  7. Start with an array of numbers and create a new array with only the numbers less than 10.
#     For example, [8, 23, 0, 44, 1980, 3] becomes [8, 0, 3].
numbers = [8, 23, 0, 44, 1980, 3]
p numbers.select{|number| number < 10}

sub_ten = []
numbers.each{|number| sub_ten << number if number < 10}
p sub_ten

#  8. Start with an array of strings and create a new array with only the strings that don't start with the letter "b".
#     For example, ["big", "little", "good", "bad"] becomes ["little", "good"].
words = ["big", "little", "good", "bad"]
p words.select{|word| word[0] != "b"}

non_b_words = []
words.each{|word| non_b_words << word if word[0] != "b"}
p non_b_words

#  9. Start with an array of hashes and create a new array with only the hashes with prices less than 10 (from the :price key).
#     For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes [{name: "pencil", price: 1}, {name: "book", price: 4}].
hashes = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
p hashes.select{|hash| hash[:price] < 10}

low_prices = []
hashes.each{|hash| low_prices << hash if hash[:price] < 10}
p low_prices

# 10. Start with an array of numbers and create a new array with only the odd numbers.
#     For example, [2, 4, 5, 1, 8, 9, 7] becomes [5, 1, 9, 7]
numbers = [2, 4, 5, 1, 8, 9, 7]
p numbers.select{|number| number % 2 != 0}

odd_numbers = []
numbers.each{|number| odd_numbers << number if number % 2 != 0}
p odd_numbers

# SOLUTIONS (using while loop): https://gist.github.com/peterxjang/7de16ed43ea506e98df3fa15074b84f8
# SOLUTIONS (using .each shortcut): https://gist.github.com/peterxjang/a702894841c7018ed8c127b647ae21f8
# SOLUTIONS (using .select shortcut): https://gist.github.com/peterxjang/b8c8fb8b77b2cae7bb9cc62a3a434761

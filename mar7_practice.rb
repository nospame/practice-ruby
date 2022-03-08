# Variables, Arrays, and Loops
# Create a program that asks the user for their favorite 5 foods. Then display those foods as an array, using the “p” keyword.

# favorite_foods = []
# 5.times do
#   puts "Enter a favorite food:"
#   input_food = gets.chomp
#   favorite_foods << input_food
# end

# i = 1
# favorite_foods.each do |food|
#   puts "#{i}. #{food}."
#   i += 1
# end

# Now, instead of printing out the array, output 5 separate lines of each food, with the prefix, “I love”. For example
# 	I love cobb salad
# 	I love spaghetti
# 	I love pizza
# 	I love Swedish meatballs
# 	I love mac and cheese


# Finally, change your program so that when the list is printed in the terminal, each food is prefaced with a number, beginning with 1 and going up to 5, for example:
# 1. cobb salad
# 2. spaghetti
# 3. pizza
# 4. Swedish meatballs
# 5. mac and cheese


# Operators and Conditionals

# Create and define a variable ‘count = 0’. Using a loop and the ‘+=’ operator, output the following:
# 0
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10

# count = 0
# while count <= 10
#   p count
#   count += 1
# end


# Translate the following into ruby code. Run the program to make sure it works:
#   Sam enjoys cooking. Make an array with recipe names to represent the different recipes Sam can cook.
#   Sally speaks many languages. Make an array with language names to represent the languages Sally can speak.
#   If Sam can cook more than 10 recipes and Sally speaks more than 5 languages, they should date. Based on the above arrays, print out a message describing whether or not they should date.
#   If Sam can make crepes or Sally can speak French, they should marry. Based on the above arrays, print out a message describing whether or not they should marry.

# sam_recipes = ["shepherds pie", "pizza", "chicken soup", "crepes"]
# sally_languages = ["English", "Japanese"]

# if sam_recipes.length > 10 && sally_languages > 5
#   p "They should date"
# elsif sam_recipes.include?("crepes") || sally_languages.include?("French")
#   p "They should marry"
# else
#   p "They should see other people"
# end


# Hashes
# Create a banking program that asks the user 5 times to enter a first name, last name, and email. This information should be stored as an array of hashes.

# Each person should automatically be given an account number which is a randomized ten digit number.

# After the user is finished, the program should print out all the users.
# For example:
# FIRST NAME: Joan
# LAST NAME: Kelson
# EMAIL: jkelson@juno.com
# ACCT #: 2372041038
# 	and so on for all the users.
# require 'faker'

# count = 1
# people_info = []

# 5.times do
#   puts "Enter first name for person #{count}:"
#   input_first = Faker::Name.first_name
#   puts "Enter last name for person #{count}:"
#   input_last = Faker::Name.last_name
#   puts "Enter email address for person #{count}:"
#   input_email = "#{input_first[0]}#{input_last}@#{Faker::Internet.domain_name}"

#   person_info = {"first_name" => input_first, "last_name" => input_last, "email" => input_email, "account" => rand(10**10)}
#   people_info << person_info

#   count += 1
# end

# puts people_info



# Final Review
# Create a program that puts your class into groups! Have the program request the user to enter each student’s name.  Assume the classroom has an even number of students, so there are only groups of two. For example, you can have the program output groups like so:
# 	Group: Hermione Seamus
# 			Group: Lucius Cho
# 			Group: Sirius Luna
# 			Group: Severus Draco



# Refactor the program to take an odd or even number of students. If odd, one group should have three students.
# 	Group: Hermione Seamus
# 			Group: Lucius Cho
# 			Group: Sirius Luna
# 			Group: Severus Draco Harry

students = ["Anna", "Victoria", "Clifford", "Ernie", "Ben", "Dragon", "Oswald"]

i = 0
while i < students.length - 1
  group = [students[i], students[i + 1]]
  i += 2
  unless students[i + 1] == nil
    p "Group: #{group[0]} #{group[1]}"
  else
    group << students[i]
    p "Group: #{group[0]} #{group[1]} #{group[2]}"
  end
end
p students

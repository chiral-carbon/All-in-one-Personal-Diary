# Strings and Text
types_of_people = 10
x = 'There are #{types_of_people} types of people.' # string within single quotes
binary = 'binary'
do_not = "don't" # will give error if put in single quotes because of the "'" already present.
y = "Those who know #{binary} and those who #{do_not}."

puts x
puts y

puts "I said: #{x}."
puts "I also said: '#{y}'."

hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."

puts w + e

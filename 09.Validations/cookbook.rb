require_relative 'config/application'
require './models/recipe'
require './models/user'

puts " \n"
puts "***************************************************"
puts "Salut Robuchon, what do you want to do today?\n"
puts "1. create a recipe"
puts "2. delete all recipes"
puts "3. read your recipes\n"
puts "4. list your users"
puts "5. find a recipe by name"
puts "***************************************************"

choice = gets.chomp.to_i

if choice == 1
	puts "Name ?" 
  	name = gets.chomp
  puts "Description ?"
  	description = gets.chomp
  puts "Length ?"
  	length = gets.chomp
  puts "Difficulty ?"
  	difficulty = gets.chomp
  puts "Rating ?"
    rating = gets.chomp

  recipe = Recipe.create(name: name, description: description, length: length, difficulty: difficulty, rating: rating)
  
elsif choice == 2
	Recipe.delete_all
  puts "Recipes deleted !\n"

elsif choice == 3
  puts "Here are your recipes\n"
  puts Recipe.all

elsif choice == 4
	puts "There are #{User.count} users in your database."
	puts User.all

elsif choice == 5
	puts "Which is the recipe you want to find ?"
	answer = gets.chomp
	p Recipe.find_by_name(answer)

else
  puts "I did not understand\n"
end


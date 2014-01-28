require_relative 'config/application'
require './models/recipe'

# your program here

puts " \n"
puts "***************************************************"
puts "Salut Robuchon, what do you want to do today?\n"
puts "1. create a recipe"
puts "2. delete all recipes"
puts "3. read your recipes\n"
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

  recipe = Recipe.create(name: name, description: description, length: length, difficulty: difficulty)
  
elsif choice == 2
	Recipe.delete_all
  puts "Recipes deleted !\n"

elsif choice == 3
  puts "Here are your recipes\n"
  puts Recipe.all

else
  puts "I did not understand\n"
  
end
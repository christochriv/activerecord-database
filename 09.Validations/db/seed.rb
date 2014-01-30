require './models/recipe'
require './models/user'
require 'faker'
require 'nokogiri'
require 'open-uri'

puts "Seeding database..."

ingredients = ["curry", "crevettes", "agneau", "pomme", "orange", "café", "asperges", "celeri", "dorade"]

10.times do |x|
	user = User.create(name: Faker::Name.name, email: Faker::Internet.email)

	html_file = open("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{ingredients.sample}")
	recipes = Nokogiri::HTML(html_file)

	recipes.search('.m_search_result').each do |element|
		recipe_name = element.search('.m_search_titre_recette a').inner_text
		recipe_description = element.search('.m_search_result_part4').inner_text
		recipe_length = recipe_description.match(/(\d+)\smin/)[1].to_i
		recipe_difficulty = rand(1..9)
			
		Recipe.create(name: recipe_name, description: recipe_description, length: recipe_length, difficulty: recipe_difficulty, user_id: user.id)
	end
end
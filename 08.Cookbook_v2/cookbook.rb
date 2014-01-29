require_relative 'config/application'
require './models/recipe'
require './models/user'

# your code here to query the database
puts "There are #{User.count} users in your database."
p Recipe.find_by_name("dorade au pastis").user
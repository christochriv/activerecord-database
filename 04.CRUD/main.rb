require 'sqlite3'

# creates the database
db_path = "db/cookbook.sqlite"
db = SQLite3::Database.new(db_path)

# creates the schema of the database
sql = %q{ CREATE TABLE Recipes
  (
  Id INTEGER primary key autoincrement,
  Name VARCHAR,
  Description TEXT,
  Length INTEGER,
  Difficulty INTEGER
  )
  }

begin
  db.execute(sql)
  puts "First visit ? Welcome to the Cookbook!"
rescue
  puts "Welcome back!"
end

#*************************************

# function to create a recipe
def create_recipe(db, name, desc, length, dif)
  db.execute("INSERT INTO Recipes(Name, Description, Length, Difficulty) VALUES('#{name}', '#{desc}', #{length}, #{dif})")
end

# function to delete a recipe
def delete_recipe(db,id)
  db.execute("DELETE FROM Recipes WHERE RecipesId = #{id}")
end

# function to delete all recipes
def delete_all_recipes(db)
  db.execute("DELETE FROM Recipes")
end

# function to update a recipe
def update_recipe(db,id,description)
  db.execute("UPDATE Recipes SET Recipes.Description = #{description} WHERE RecipesId = #{id}")
end

def get_recipes(db)
  db.execute("SELECT * FROM Recipes")
end


#*************************************

puts "Salut Robuchon, what do you want to do today?"
puts "1. create a recipe"
puts "2. delete all recipes"
puts "3. read your recipes"

choice =  gets.chomp.to_i

if choice == 1

  puts "Name ?" 
  name = gets.chomp

  puts "Description ?"
  description = gets.chomp

  puts "Length ?"
  length = gets.chomp

  puts "Difficulty ?"
  difficulty = gets.chomp

  create_recipe(db, name, description, length, difficulty)

elsif choice == 2
 delete_all_recipes(db)
 puts "Recipes deleted !"

elsif choice == 3
  get_recipes(db)
end 

  
  
  
  
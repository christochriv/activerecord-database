class CreateRecipes < ActiveRecord::Migration
  def change
      create_table :recipes do |t|
        t.string :name
        t.string :description
        t.integer :length
        t.integer :difficulty
        t.integer :rating
        t.timestamps
      end
    end
end
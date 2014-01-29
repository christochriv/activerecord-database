class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
    	t.column :name, :text
    	t.column :description, :text
    	t.column :length, :integer
    	t.column :difficulty, :integer
    end
  end
end



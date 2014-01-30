class Recipe < ActiveRecord::Base
  	validates :name, uniqueness: true
  	validates :difficulty, inclusion: { in: 1..5 }
  	belongs_to :user

    def to_s
  		 "Recette n°#{id} - #{name}\n#{description}\nTemps de cuisson: #{length} / Difficulté: #{difficulty}"
 	 end
 	 
end
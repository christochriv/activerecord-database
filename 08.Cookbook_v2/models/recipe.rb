class Recipe < ActiveRecord::Base
  	
  	belongs_to :user

    def to_s
  		 "Recette n°#{id} - #{name}\n#{description}\nTemps de cuisson: #{length} / Difficulté: #{difficulty}"
 	 end
 	 
end
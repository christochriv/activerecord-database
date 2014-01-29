class Recipe < ActiveRecord::Base
  def to_s
  	puts "Recette n°#{id} - #{name}"
  	puts "#{description}"
  	puts "Temps de cuisson: #{length} / Difficulté: #{difficulty}"
  end
end
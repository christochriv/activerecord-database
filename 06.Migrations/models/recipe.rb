class Recipe < ActiveRecord::Base
	def to_s
		puts "#{name} : #{description} - #{length} min / Difficulty => #{difficulty} / Rating => #{rating}"
	end
end
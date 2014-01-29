class User < ActiveRecord::Base
    has_many :recipes, dependent: :destroy

    def to_s
	  	"Name : #{name} - Contact : #{email}"
  	end	
end
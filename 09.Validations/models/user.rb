class User < ActiveRecord::Base
    validates :name, presence: true
    validates :email, uniqueness: true, format: { with: /.+\@.+\..+/,
  																			message: "invalid email" }
  	validates_associated :recipe

    has_many :recipe, dependent: :destroy

    def to_s
	  	"Name : #{name} - Contact : #{email}"
  	end	
end

    
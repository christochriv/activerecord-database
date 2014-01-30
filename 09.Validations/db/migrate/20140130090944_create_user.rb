class CreateUser < ActiveRecord::Migration
	def change
		create_table :users do |t|
			t.column :name, :string
			t.column :email, :string
		end
	end
end
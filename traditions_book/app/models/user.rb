class User < ActiveRecord::Base
	
	has_many :traditions
	has_many :ratings
	has_many :pictures
	has_secure_password
	validates :first_name, :last_name, :major, :graduation_year, presence: true
	validates :email, uniqueness: true
	validates :email, length: { minimum: 7 }
	
	def username
		x,y=email.split('@')
		x
	end
	def name
		first_name+" "+last_name
	end
end

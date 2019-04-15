class User
	attr_accessor :email, :age
	@@all_users = []

	def initialize(email_to_save, age_to_save)
		@email = email_to_save
		@age = age_to_save
		@@all_users << self
	end

	def self.all
		@@all_users.map { |name| puts name.email }
	end

	def find_by_email(email)
		@@all_users.each do |name|
			if name.email == email
				return user
			end
		end
	end

end
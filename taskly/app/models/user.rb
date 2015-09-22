class User < ActiveRecord::Base
	has_many :tasks

	def to_h
		{name: self.name, email: self.email}
	end
end

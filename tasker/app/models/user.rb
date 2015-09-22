class User < ActiveRecord::Base
	has_secure_password
	after_initialize :set_default_role
	has_many :tasks

	def to_h
		{name: self.name, email: self.email}
	end


	private
	def set_default_role
		self.role ||= 'user'
	end
end

require 'rails_helper'

describe User, type: :model do
	let(:user) { User.create(name: "Foo Bar", email: "foo@bar.com", confirmed: true)}

	it "has a to_h method" do
		expect(user.to_h).to eq ({
			name: user.name,
			email: user.email
		})
	end
end
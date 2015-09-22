require 'rails_helper'

describe 'Users API endpoint' do
	context 'getting users info' do
		context 'when there are no users' do
			it 'gets an empty array' do
				get users_path
				expect(json).to eq []
			end
		end

		context 'where there are users' do
			let(:user1) {User.create(user_params)}
			let(:user2) {User.create(user_params(name: 'kat', email: 'kat@mail.com'))}
			let!(:users) { [user1.to_h, user2.to_h] }

			before {get users_path}

			it 'gets all the users' do
				expect(json.size).to eq 2
			end

			it 'gets the proper user info' do
				expect(json).to match_array users
			end
		end
	end

	context 'creating a user' do
	  context 'when the user does not exist'
		before {post users_path, user_params}

		it 'creates a user' do
			expect(User.count).to eq 1
		end

		it 'status is 201' do
			expect(response.status).to eq 201
		end
	  end

	
	end

	private
	def user_params(args={})
		{
			name: "Kim",
			email: "kim@mail.com",
			confirmed: true
		}.merge(args)
	end
end
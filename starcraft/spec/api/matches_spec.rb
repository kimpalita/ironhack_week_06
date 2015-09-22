require 'rails_helper'

describe 'Matches API endpoint' do
	context 'obtaining info of matches' do
		let(:player) {Player.create name: 'bob', favorite_faction: 'TeamA'}

		it 'returns an array of matches' do
			get matches_path
			expect(Match.all).to eq []
		end

		it 'returns a player' do
			expect(player.name).to eq 'bob'
		end

	end

end
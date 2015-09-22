class MatchesController < ApplicationController
	def index
	end

	def faction
		matches = Match.joins(:winner).where('winner_faction=? OR loser_faction=?', 'protoss', 'protoss')
	end
end

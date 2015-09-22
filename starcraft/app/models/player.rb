class Player < ActiveRecord::Base
	has_many :matches_won, :class_name => "Match", :foreign_key => "winner_id"
	has_many :matches_lost, :class_name => "Match", :foreign_key => "loser_id"
end

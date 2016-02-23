class Round < ActiveRecord::Base
	has_many :player_rounds
	belongs_to :game
	has_many :players, through: :player_rounds
end

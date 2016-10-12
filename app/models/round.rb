class Round < ActiveRecord::Base
	belongs_to :game
	has_many :players_rounds
	has_many :players, through: :players_rounds
	# has_and_belongs_to_many :players
end

class Player < ActiveRecord::Base
	has_many :player_rounds
	has_many :rounds, through: :player_rounds
end

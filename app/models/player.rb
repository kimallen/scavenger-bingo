class Player < ActiveRecord::Base
	belongs_to :user
	has_many :players_rounds
	has_many :rounds, through: :players_rounds
	# has_and_belongs_to_many :played_rounds, source: :round
end

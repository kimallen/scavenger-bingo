class Clue < ActiveRecord::Base
	belongs_to :game
	has_one :user, through: :game

	validates :text, presence: true
end

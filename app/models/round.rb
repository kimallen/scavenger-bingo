class Round < ActiveRecord::Base
	has_many :player_rounds
	belongs_to :game
	has_many :players, through: :player_rounds

	def create_url
		url_ext = ""
		8.times{random_key << (65 + rand(25)).chr}
		@url_ext = url_ext
	end
end

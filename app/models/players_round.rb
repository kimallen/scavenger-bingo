class PlayersRound < ActiveRecord::Base
	belongs_to :player
	belongs_to :round

	validates_uniqueness_of  :player_id, scope: :round_id

	# def is_unique_record (options)
 #  		if PlayersRound.where(player_id: options[player], round_id: options[round]).exists?
 #    		self.errors.add(:players_round, "already exists")
 #  			return false
 #    	else
 #    		return true
 #    	end
 #  	end
end

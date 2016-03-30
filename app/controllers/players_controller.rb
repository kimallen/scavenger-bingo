class PlayersController < ApplicationController
	def new
		@player = Player.new
	end

	def create
		@player = Player.new(player_params)
		# need to pass the id of the pertinent round
		@round = Round.find_by()
		if @player.save
			@player_round = PlayerRound.create(player_id: @player.id, round_id: @round.id)
			render partial: "show", layout: false, locals: {player: @player}
		else
			flash[:error] = "Fields must not be blank"
		end

	end

	def show

	end

	def edit

	end

	def update

	end

	def destroy

	end

	private
	def player_params
		params.require(:player).permit(:name, :phone, )
	end
end

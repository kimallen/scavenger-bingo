class RoundsController < ApplicationController

	def new
		@round = Round.new
	end

	def create
		@game = Game.find(params[:game_id])
		@round = Round.new(url_ext: create_url, game_id: params[:game_id])
		if @round.save
			redirect_to round_path(@round)
		else
		end
	end

	def show
		@round = Round.find(params[:id])
		@game = Game.find_by(id: @round.game_id)
		render 'show'
	end

	private
	def round_params
		params.require(:round).permit(:url_ext, :game_id)
	end
end

class RoundsController < ApplicationController

	def new
		@round = Round.new
	end

	def create
		@round = Round.new(round_params)
		if @round.save
			render partial: "show", layout: false 
		else
			
		end
	end

	def show

	end

	private
	def round_params
		params.require(:round).permit(:url_ext, :game_id)
end

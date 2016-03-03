class CluesController < ApplicationController
	def new

	end

	def create
		p params
		@clue = Clue.new(clue_params)
		if @clue.save
			redirect_to game_path(@game)
		else
			render :new
		end
	end

	private
	def clue_params
		params.require(:clue).permit(:game_id, :text, :keyword, :pt_value)
	end
end

class CluesController < ApplicationController
	def new

	end

	def create
		@game = Game.find(params[:game_id])
		@clue = Clue.new(clue_params)
		if @clue.save
			redirect_to game_path(@game)
		else
			render :new
		end
	end

	def edit
		
	end

	def update
		
	end

	private
	def clue_params
		params.require(:clue).permit(:game_id, :text, :keyword, :pt_value)
	end
end

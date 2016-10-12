class CluesController < ApplicationController
	
	skip_before_filter  :verify_authenticity_token

	def new
		@clue = Clue.new
	end

	def create
		@game = Game.find(params[:game_id])
		@clue = Clue.new(clue_params)
		if @clue.save
			render partial: "new_show", locals: {clue: @clue}, layout: false
		else
			p "in else for error"
			flash[:clue_error] = "Fields must not be blank"
			# This is not rendering on the original game show page- it's going to clues page
			render partial: "new", layout: false
		end
	end

	def show

	end

	def edit
		# @game = Game.find(params[:game_id])
		@clue = Clue.find(params[:id])
		render partial: "edit", layout: false
	end

	def update
		@game = Game.find(params[:game_id])
		@clue = Clue.find(params[:id])
		
		if @clue.update(clue_params)
			render partial: "show", layout: false, locals: {clue: @clue, game: @game}
		else
			flash[:clue_error] = "Fields must not be blank"
			render partial: "edit", layout: false
		end

	end

	def destroy
		
		@clue = Clue.find(params[:id])
		@game = Game.find(@clue.game_id)
		@clue.destroy
		render partial: "destroy"
		# redirect_to @game
	end

	private
	def clue_params
		params.require(:clue).permit( :game_id, :text, :keyword, :pt_value)
	end
end

class GamesController < ApplicationController

	def index
		@game = Game.all
	end

	def show
		@game = Game.find(params[:id])
	end

	def new
		@game = Game.new
		render new_game_path
	end

	def create
		@game = Game.new(game_params)
		if @game.save
			redirect_to game_path(@game)
		else
			flash[:error]
			render new_game_path
		end
	end

	def edit
		@game = Game.find(params[:id])
	end

	def update
		@game = Game.find(params[:id])
		if @game.update(game_params)
			redirect_to game_path(@game)
		else
			render edit_game_path(@game)
	end

	def destroy
		@game = Game.find(params[:id])
		@game.destroy
	end

	private
  def game_params
    params.require(:game).permit(:name, :theme)
  end

end

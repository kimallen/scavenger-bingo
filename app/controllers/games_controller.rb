class GamesController < ApplicationController

	before_action :authorize_user, only: [:edit, :destroy]

	def index
		@games = Game.all
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
	end

	def destroy
		@game = Game.find(params[:id])
		@game.destroy
	end

	def sample_board
		@game = Game.find_by(id: params[:id])
		if @game.clues.empty?
			flash[:error] = "Please add clues for this game"
			redirect_to game_path(@game)
		else
			@board = @game.generate_board(@game.clues)
			@width = 5
			@size = 5
		end
	end

	private
  def game_params
    params.require(:game).permit(:name, :theme, :user_id)
  end

  def authorize_user
    @user = User.find_by(id: current_user.id)
    unless @user.id == current_user.id
      redirect_to root_path
  	end
  end

end

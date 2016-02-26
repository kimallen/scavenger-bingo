class BoardController < ApplicationController
	def sample_board
	@game = Game.find_by(id: params[:id])
	@board = @game.generate_board(@game.clues)
	@width = 5
	@size = 5
	end
end
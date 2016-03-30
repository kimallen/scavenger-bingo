class PlayerController < ApplicationController
	def new
		@player = Player.new
	end

	def create
		@
		@player = Player.new(player_params)
		if @player.save
			render partial: "show", layout: false
		else
			flash[:error] = ""
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

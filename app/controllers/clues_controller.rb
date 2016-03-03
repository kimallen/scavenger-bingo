class CluesController < ApplicationController
	def new

	end

	def create
		p params
		@clue = Clue.new(params[:clue])
	end
end

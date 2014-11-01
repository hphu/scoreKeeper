class PlayersController < ApplicationController
	def new
	end

	def create
		@player = Players.new(params.require(:player).permit(:username))
		respond_to do |format|
			if @player.save()
				format.js {}
			end
		end
		render :nothing => true
	end
end

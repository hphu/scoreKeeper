class PlayerController < ApplicationController
	def new
	end

	def create
		@party = Party.find(params[:party_id])
		@player = @party.player.build(params.require(:player).permit(:username))
		respond_to do |format|
			if @player.save()
				format.js 
			end
		end
	end
end

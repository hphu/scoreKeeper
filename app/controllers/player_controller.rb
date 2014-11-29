class PlayerController < ApplicationController
	def new
	end

	def show
		@player = Player.find(params[:id])
		@wins = Game.where(winner_id: @player.id)
		@losses = Game.where(loser_id: @player.id)
		@ratio = Float(@wins.count) / (@losses.count + @wins.count) * 100
	end

	def create
		@party = Party.find(params[:party_id])
		@player = @party.players.build(params.require(:player).permit(:username))
		respond_to do |format|
			if @player.save()
				format.js
			end
		end
	end
end

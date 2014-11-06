class GamesController < ApplicationController
	def index
	end

	def new
		@party = Party.find(params[:party_id])
		@my_players = Player.where(party_id: @party.id)
		@my_player_options = @my_players.map {|p| [p.username, p.id]}
	end

	def create
		#validate game and save to db
		@party = Party.find(params[:party_id])
		@game = @party.game.create(params.require(:games).permit(:winner, :loser, :notes))
		redirect_to @party
	end

	private
		def game_params
		end
end

class GamesController < ApplicationController
	def index
		@party = Party.find(params[:party_id])
	end

	def new
		@game = Game.new
		@party = Party.find(params[:party_id])
		@my_player_options = player_options(@party.player)
	end

	def create
		#validate game and save to db
		@party = Party.find(params[:party_id])
		@game = @party.game.create(game_params)
		if @game.save()
			redirect_to @party
		else
			@my_player_options = player_options(@party.player)
			render 'new'
		end
	end

	private
		def game_params
			params.require(:games).permit(:winner_id, :loser_id, :notes)
		end
	private
		def player_options(players)
			players.map {|p| [p.username, p.id]}
		end
end

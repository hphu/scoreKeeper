class GamesController < ApplicationController
	def index
	end

	def new
		@party = Party.find(params[:party_id])
	end

	def create
		#validate game and save to db
		redirect_to @party
	end
end

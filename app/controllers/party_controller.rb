class PartyController < ApplicationController
  def new
  	@party = Party.new
  end

  def show
  	@party = Party.find(params[:id])
    @players_all = @party.players
    @games_all = @party.games
  end

  def index
  	#list parties
  	@parties_all = Party.all.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])
  end

  def create
  	@party = Party.new(params.require(:party).permit(:name))
  	if @party.save()
  		redirect_to @party
  	else
  		render 'new'
  	end
  end

  private

  def sort_column
    Party.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    ["asc", "desc"].include?(params[:direction]) ? params[:direction] : "asc"
  end


end

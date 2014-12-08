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

    #Create the party
    party_name = params[:name]
  	@party = Party.new(:name => party_name)

    #Save party and initialize players
  	if @party.save()

      #Create the initial players
      initialize_players

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

  #intialize the first players of the party, return a list of initialized players
  def initialize_players
    initial_players = []
    if params[:player_names]
      player_names = params[:player_names].split(",")
      player_names.each do |tag|
        new_player = Player.create(:username => tag, :party_id => @party.id)
        initial_players.append(new_player)
      end
    end
    return initial_players
  end


end

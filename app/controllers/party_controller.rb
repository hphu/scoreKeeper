class PartyController < ApplicationController
  def new
  	@party = Party.new
  end

  def show
  	@party = Party.find(params[:id])
  end

  def create
  	@party = Party.new(params.require(:party).permit(:name))
  	if @party.save()
  		redirect_to @party
  	else
  		render 'new'
  	end

  end
end

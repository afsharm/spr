class ClubsController < ApplicationController

  def index
    @clubs=Club.all
  end

  def show
    @club = Club.find(params[:id])
  end

  def new
    @club = Club.new
  end

  def create
      @club = Club.new(club_params)

      if @club.save
        redirect_to @club
      else
        render 'new'
      end
  end

  private 
    def club_params
      params.require(:club).permit(:name, :addr, :website)
    end

end

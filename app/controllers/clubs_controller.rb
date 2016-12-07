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

  def edit
    @club=Club.find(params[:id])
  end

  def create
      @club = Club.new(club_params)

      if @club.save
        redirect_to @club
      else
        render 'new'
      end
  end

  def update
    @club = Club.find(params[:id])

    if (@club.update(club_params))
      redirect_to @club
      else
        render 'edit'
      end
  end

  private 
    def club_params
      params.require(:club).permit(:name, :addr, :website)
    end

end

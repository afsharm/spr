class ClubsController < ApplicationController

  def new
  end

  def create
      render plain: params[:club].inspect
  end

end

class Api::V1::PlaydatesController < ApplicationController

  def index
    playdates = Playdate.all
    render json: playdates
  end

  def show
    playdate = Playdate.find(params[:id])
    render json: playdate
  end

  def new
    playdate = Playdate.new
  end
  
  def create
  end

  def edit
  end

  def update
  end

  

end
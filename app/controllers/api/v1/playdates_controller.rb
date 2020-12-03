class Api::V1::PlaydatesController < ApplicationController

  before_action 

  def index
    playdates = Playdate.all
    render json: playdates.to_json 
  end

  def show
    playdate = find_playdate
    render json: playdate
  end

  def new
    playdate = Playdate.new
  end
  
  def create
    playdate = Playdate.create(playdate_params)
    render json: playdate
  end

  def edit
    plydate = find_playdate
  end

  def update
    playdate = find_playdate
    playdate.update(playdate_params)
    render json: playdate
    
  end

  def destroy
    playdate = find_playdate
    playdate.destroy
    render json: playdate
  end

  private

  def playdate_params
    params.require(:playdate).permit(:pet_id, :pet2_id, :date, :location)
  end

  def find_playdate
    Playdate.find(params[:id])
  end
  

end
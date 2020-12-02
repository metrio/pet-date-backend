class Api::V1::PetsController < ApplicationController
    
    def show
        pet = Pet.find(params[:id])
        render json: pet.to_json(:include => {
            :playdates => {:except => [:created_at, :updated_at]},
            },
            :except => [:created_at, :updated_at])
    end

    def index
        pets = Pet.all
        render json: pets.to_json(:include => {
            :playdates => {:except => [:created_at, :updated_at]},
            },
            :except => [:created_at, :updated_at])
    end

end

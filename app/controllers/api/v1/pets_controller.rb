class Api::V1::PetsController < ApplicationController
    
    def show
        pet = find_pet
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

    def new
        pet = Pet.new
    end

    def create
        pet = Pet.create(pet_params)
        render json: pet
    end


    private

    def pet_params
        params.require(:pet).permit(:name, :temper, :age, :breed, :gender, :species, :img)
      end
    
      def find_pet
        Pet.find(params[:id])
      end

end

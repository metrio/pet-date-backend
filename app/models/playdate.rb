class Playdate < ApplicationRecord
    belongs_to :pet, class_name: "Pet", foreign_key: "pet_id" 
    belongs_to :pet2, class_name: "Pet", foreign_key: "pet2_id"

end

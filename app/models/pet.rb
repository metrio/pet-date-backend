class Pet < ApplicationRecord
    has_many :playdates
    has_many :pet_friends, class_name: "Playdate", foreign_key: :pet_id
    has_many :pet_friendees, through: :pet_friends, source: :pet

    has_many :pet_friendees, class_name: "Playdate", foreign_key: :pet2_id
    has_many :pet_friends, through: :pet_friendees, source: :pet
end

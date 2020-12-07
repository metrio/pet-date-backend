class PetSerializer < ActiveModel::Serializer
  attributes  :name, :temper, :age, :breed, :gender, :species, :img
  has_many :playdates
end

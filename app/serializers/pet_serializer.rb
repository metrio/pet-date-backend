class PetSerializer < ActiveModel::Serializer
  attributes  :name, :temper, :age, :breed, :gender, :species
  has_many :playdates
end

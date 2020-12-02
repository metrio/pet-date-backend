class PlaydateSerializer < ActiveModel::Serializer
  attributes :id, :pet_id, :pet2_id, :date, :location, :longitude, :latitude
  belongs_to :pets
end

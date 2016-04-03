class TripSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :arrival, :departure, :description
end

class TripSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :arrival, :departure, :description
  # has_many :users, embed: :ids, key: "users", include: true
end

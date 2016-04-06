class TripSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :arrival, :departure, :description, :items
  # has_many :users, embed: :ids, key: "users", include: true
  # def items
  #   object.items.pluck(:content)
  # end
end

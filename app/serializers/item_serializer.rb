class ItemSerializer < ActiveModel::Serializer
  attributes :id, :content, :trip_id, :user_id
end

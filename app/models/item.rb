class Item < ActiveRecord::Base
  belongs_to :trip, inverse_of: :items
end

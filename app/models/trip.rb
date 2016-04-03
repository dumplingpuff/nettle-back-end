class Trip < ActiveRecord::Base
  has_many :items
end

class Trip < ActiveRecord::Base
  has_many :invites
  has_many :users, through: :invites
  has_many :items, inverse_of: :trip
end

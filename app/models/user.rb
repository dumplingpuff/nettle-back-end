#
class User < ActiveRecord::Base
  include Authentication

  has_many :invites
  has_many :trips, through: :invites
  has_many :items, inverse_of: :user
  has_many :examples
end

#
class User < ActiveRecord::Base
  include Authentication

  has_many :trips, through: :invites
  has_many :examples
end

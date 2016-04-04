class Invite < ActiveRecord::Base
  belongs_to :user, inverse_of: :invites
  belongs_to :trip, inverse_of: :invites
end

class Reservation < ActiveRecord::Base
  belongs_to :user, inverse_of: :reservations
  belongs_to :week, inverse_of: :reservations
end

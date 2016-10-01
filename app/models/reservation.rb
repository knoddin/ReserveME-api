class Reservation < ActiveRecord::Base
  belongs_to :user, inverse_of: :reservations
  belongs_to :week, inversse_of: :reservations
end

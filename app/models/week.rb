class Week < ActiveRecord::Base
  has_many :users, through: :reservations
end

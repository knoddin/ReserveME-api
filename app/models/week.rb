class Week < ActiveRecord::Base
  has_many :users, through: :reservations
  has_many :reservations, dependent: :destroy
end

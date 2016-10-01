class User < ActiveRecord::Base
  include Authentication
  has_many :weeks, through: :reservations
  has_many :reservations, dependent: :destroy
end

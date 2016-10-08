class User < ActiveRecord::Base
  include Authentication
  has_many :reservations, dependent: :destroy
end

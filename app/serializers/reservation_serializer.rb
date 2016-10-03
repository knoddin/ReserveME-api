class ReservationSerializer < ActiveModel::Serializer
  attributes :id
  has_many :users
  has_many :weeks
end

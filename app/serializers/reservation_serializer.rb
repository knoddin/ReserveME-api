class ReservationSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :week
end

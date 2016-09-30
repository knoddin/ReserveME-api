class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :dates
  has_one :user
end

class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date
  has_one :user
end

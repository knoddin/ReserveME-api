class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :comments
  has_one :user
end

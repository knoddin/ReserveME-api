class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date
end

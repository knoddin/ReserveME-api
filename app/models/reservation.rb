class Reservation < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :end_date, date: { after: :start_date}
  validates :start_date, date: { after: Proc.new { Time.now } }
end

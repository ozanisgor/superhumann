class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :champion
  validates :start_time, presence: true
  validates :end_time, presence: true
end

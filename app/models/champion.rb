class Champion < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :universe, presence: true
  validates :rate, presence: true
end

class Champion < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :universe, presence: true
  validates :rate, presence: true
  def self.universes
    ["Earth-616 - Prime Marvel Universe", "Prime Earth - Prime DC Comics Universe", "Marvel"]
  end
end

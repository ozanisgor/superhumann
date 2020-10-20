class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  # discuss with Sy should we make a delete dependency here?
  has_many :super_heroes, dependent: :destroy

  validates :username, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

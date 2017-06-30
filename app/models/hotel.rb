class Hotel < ApplicationRecord
  validates :name, :address, presence: true

  has_many :rooms
  has_many :bookings, through: :rooms
end

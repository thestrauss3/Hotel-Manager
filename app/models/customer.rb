class Customer < ApplicationRecord
  validates :name, :phone, :email, presence: true

  has_many :bookings
  has_many :rooms, through: :bookings
end

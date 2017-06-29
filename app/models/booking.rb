class Booking < ApplicationRecord
  validates :customer, :room, :checkin_date, :checkout_date, :checkin_time, :checkout_time, :status, presence: true
  validates :status, inclusion: { in: %w(Past Active Reservation Cancelled) }

  belongs_to :customer
  belongs_to :room
  has_one :hotel, through: :room
end

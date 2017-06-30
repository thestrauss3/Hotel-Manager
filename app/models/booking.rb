class Booking < ApplicationRecord
  validates :customer, :room, :scheduled_checkin, :scheduled_checkout, :status, presence: true
  validates :status, inclusion: { in: %w(Past Active Reservation Cancelled) }

  belongs_to :customer
  belongs_to :room
  has_one :hotel, through: :room
end

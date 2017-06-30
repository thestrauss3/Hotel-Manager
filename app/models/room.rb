class Room < ApplicationRecord
  validates :room_number, :room_type, :beds, :bed_type, presence: true

  belongs_to :hotel
  has_many :bookings
end

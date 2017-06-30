require 'pry'
class Room < ApplicationRecord
  validates :room_number, :room_type, :beds, :bed_type, presence: true

  belongs_to :hotel
  has_many :bookings

  def is_available(night = DateTime.now.end_of_day)
    active_bookings = self.bookings.where("checkin_date < ? AND checkout_date > ?", night, night)
    active_bookings.empty? || !(active_bookings.pluck(:checkout_time).any?{ |e| e.nil? })
    #no scheduled bookings, or there were scheduled bookings but they DO have a checkout_time i.e. they have already left
  end

  def self.get_available(night = DateTime.now.end_of_day)
    available_rooms = []
    Room.all.each do |room|
      available_rooms.push room if room.is_available(night)
    end
    return available_rooms
  end
end

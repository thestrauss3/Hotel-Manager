class Room < ApplicationRecord
  validates :room_number, :room_type, :beds, :bed_type, presence: true

  belongs_to :hotel
  has_many :bookings

  def old_is_available(night = DateTime.now.end_of_day)
    active_bookings = self.bookings.where("checkin_date < ? AND checkout_date > ?", night, night)
    active_bookings.empty? || !(active_bookings.pluck(:checkout_time).any?{ |e| e.nil? })
    #no scheduled bookings, or there were scheduled bookings but they DO have a checkout_time i.e. they have already left
  end

  def is_available(checkin = DateTime.now, checkout = DateTime.now.midnight + 11.hours)
    checkin = DateTime.now if checkin < DateTime.now
    checkout += 1.day while checkin > checkout
    active_bookings = self.bookings.where("scheduled_checkin < ? AND scheduled_checkout > ?", checkout, checkin)
    active_bookings.pluck(:actual_checkout).all?
    #no scheduled bookings, or there were scheduled bookings but they DO have a checkout_time i.e. they have already left
  end

  def self.get_available(checkin = DateTime.now, checkout = DateTime.now.midnight + 11.hours)
    available_rooms = []
    Room.all.each do |room|
      available_rooms.push room if room.is_available(checkin, checkout)
    end
    return available_rooms
  end
end

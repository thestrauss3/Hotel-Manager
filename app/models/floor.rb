class Floor < ApplicationRecord
  validates :hotel, :long_floor_name, :short_floor_name, presence: true

  belongs_to :hotel
  has_many :rooms
end

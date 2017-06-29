class Floor < ApplicationRecord
  validates :hotel, :floor_name, presence: true

  belongs_to :hotel
  has_many :rooms
end

class Floor < ApplicationRecord
  validates :hotel, :floor_name, presence: true

  belongs_to :hotel
end

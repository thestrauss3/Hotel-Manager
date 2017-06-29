class Hotel < ApplicationRecord
  validates :name, :address, presence: true

  has_many :rooms
end

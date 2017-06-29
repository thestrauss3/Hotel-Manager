class Customer < ApplicationRecord
  validates :name, :phone, :email, presence: true

  has_many :bookings
  has_many :rooms, through: :bookings

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end
end

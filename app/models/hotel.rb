class Hotel < ApplicationRecord
  validates :name, :address, presence: true

  has_many :floors
end

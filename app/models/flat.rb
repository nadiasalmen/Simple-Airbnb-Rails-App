class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  # validations:
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_per_night, presence: true
  validates :number_of_guests, presence: true
  validates :description, length: { in: 10..500 }
  validates :number_of_guests, inclusion: { in: 1..10 }
  validates :price_per_night, numericality: true
end

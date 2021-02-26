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

  # geocoder:
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # pg search
  include PgSearch::Model

  pg_search_scope :search_by_name_by_description_and_by_address,
    against: [:name, :description, :address],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end

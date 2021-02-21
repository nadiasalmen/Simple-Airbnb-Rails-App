class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  has_one :owner, through: :flat, class_name: 'User', source: :user

  # Validations:
  validates :status, presence: true
  validates :checkin, presence: true
  validates :checkout, presence: true
  validates :status, inclusion: { in: ['New', 'Confirmed', 'Tentative', 'Cancelled'] }
  validate :dates
  validate :ownership

  private

  def dates
    return if checkout.nil? || checkin.nil?

    return errors.add(:checkout, 'must be greater than start date') if checkout < checkin
  end

  def ownership
    errors.add(:owner, 'is the same as user') unless owner != user
  end
end

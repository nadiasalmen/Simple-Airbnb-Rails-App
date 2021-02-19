class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  has_one :owner, through: :flat, class_name: 'User', source: :user

  # Validations:
  validates :status, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates status, inclusion: { in: ['Confirmed', 'Tentative', 'Cancelled'] }
  validate :dates
  validate :ownership

  private

  def dates
    return if end_date.nil? || start_date.nil?

    return errors.add(:end_date, 'must be greater than start date') if end_date < start_date
  end

  def ownership
    errors.add(:owner, 'is the same as user') unless owner != user
  end
end

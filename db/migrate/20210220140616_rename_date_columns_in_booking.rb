class RenameDateColumnsInBooking < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :start_date, :checkin
    rename_column :bookings, :end_date, :checkout
  end
end

class FixCheckInOutToBeMoreClear < ActiveRecord::Migration[5.0]
  def change
    rename_column :bookings, :checkin_date, :scheduled_checkin
    rename_column :bookings, :checkout_date, :scheduled_checkout
    rename_column :bookings, :checkin_time, :actual_checkin
    rename_column :bookings, :checkout_time, :actual_checkout
  end
end

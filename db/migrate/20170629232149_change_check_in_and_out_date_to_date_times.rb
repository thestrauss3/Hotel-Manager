class ChangeCheckInAndOutDateToDateTimes < ActiveRecord::Migration[5.0]
  def up
    change_column :bookings, :checkin_date, :datetime, null: false
    change_column :bookings, :checkout_date, :datetime, null: false
  end
  def down
    change_column :bookings, :checkin_date, :date, null: false
    change_column :bookings, :checkout_date, :date, null: false
  end
end

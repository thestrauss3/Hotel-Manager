class AddCheckInAndOutTimes < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :checkin_time, :datetime, default: nil
    add_column :bookings, :checkout_time, :datetime, default: nil
  end
end

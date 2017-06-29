class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.belongs_to :customer, null: false
      t.belongs_to :room, null: false
      t.date :checkin_date, null: false
      t.date :checkout_date, null: false
      t.string :status, null: false, default: 'Reservation'

      t.timestamps
    end
  end
end

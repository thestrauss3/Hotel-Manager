class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :room_number, null: false
      t.string :room_type, null: false
      t.integer :beds, null: false
      t.string :bed_type, null: false

      t.timestamps
    end
  end
end

class RemoveFloorsTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :floors
  end
  def down
    create_table :floors do |t|
      t.belongs_to :hotel, null: false
      t.string :short_floor_name, null: false
      t.string :long_floor_name, null: false

      t.timestamps
    end
  end
end

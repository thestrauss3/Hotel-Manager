class CreateFloors < ActiveRecord::Migration[5.0]
  def change
    create_table :floors do |t|
      t.belongs_to :hotel, null: false
      t.string :floor_name, null: false

      t.timestamps
    end
  end
end

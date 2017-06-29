class CreateHotels < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :website
      t.string :phone

      t.timestamps
    end
  end
end

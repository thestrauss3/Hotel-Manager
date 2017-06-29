class RemoveFloorIdFromRoom < ActiveRecord::Migration[5.0]
  def up
    remove_column :rooms, :floor_id
  end
  def down
    change_table :rooms do |t|
      t.belongs_to :floor, null: false
    end
  end
end

class AddShortFloorNames < ActiveRecord::Migration[5.0]
  def change
    rename_column :floors, :floor_name, :long_floor_name
    add_column :floors, :short_floor_name, :string, null: false
  end
end

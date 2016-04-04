class AddItemToTrip < ActiveRecord::Migration
  def change
    add_column :items, :trip_id, :integer
    add_index :items, :trip_id
    add_foreign_key :items, :trips, column: :trip_id
  end
end

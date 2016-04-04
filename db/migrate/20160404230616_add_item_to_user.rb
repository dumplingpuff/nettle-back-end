class AddItemToUser < ActiveRecord::Migration
  def change
    add_column :items, :user_id, :integer
    add_index :items, :user_id
    add_foreign_key :items, :users, column: :user_id
  end
end

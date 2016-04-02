class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :title, null: false
      t.string :location, null: false
      t.date :arrival, null: false
      t.date :departure
      t.text :description

      t.timestamps null: false
    end
  end
end

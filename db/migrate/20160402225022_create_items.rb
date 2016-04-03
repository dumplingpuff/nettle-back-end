class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :content

      t.timestamps null: false
    end
  end
end

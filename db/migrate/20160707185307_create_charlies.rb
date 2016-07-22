class CreateCharlies < ActiveRecord::Migration
  def change
    create_table :charlies do |t|
      t.text :description
      t.integer :creator
      t.string :photo

      t.timestamps null: false
    end
  end
end

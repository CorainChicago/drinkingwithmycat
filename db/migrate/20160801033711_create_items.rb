class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :description
      t.integer :order
      t.integer :list_of_importance_id

      t.timestamps null: false
    end
  end
end

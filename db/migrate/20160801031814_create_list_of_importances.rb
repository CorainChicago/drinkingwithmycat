class CreateListOfImportances < ActiveRecord::Migration
  def change
    create_table :list_of_importances do |t|
      t.string :title
      t.text   :description

      t.timestamps null: false
    end
  end
end

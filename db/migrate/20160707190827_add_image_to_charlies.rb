class AddImageToCharlies < ActiveRecord::Migration
  def change
    add_column :charlies, :image, :string
  end
end

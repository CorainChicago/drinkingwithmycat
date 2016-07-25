class AddEmailToCharlie < ActiveRecord::Migration
  def change
    add_column :charlies, :email, :string
  end
end

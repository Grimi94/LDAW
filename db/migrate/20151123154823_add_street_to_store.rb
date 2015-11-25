class AddStreetToStore < ActiveRecord::Migration
  def change
    add_column :stores, :street, :string
  end
end

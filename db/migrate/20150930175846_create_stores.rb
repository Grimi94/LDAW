class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :description
      t.float :rating

      t.timestamps null: false
    end
  end
end

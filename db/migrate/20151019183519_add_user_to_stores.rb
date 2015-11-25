class AddUserToStores < ActiveRecord::Migration
  def change
    add_reference :stores, :user, index: true
    add_foreign_key :stores, :users
  end
end

class AddDefaultValueToApproved < ActiveRecord::Migration
  def change
    change_column :stores, :approved, :boolean, :default => false
  end
end

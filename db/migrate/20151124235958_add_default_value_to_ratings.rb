class AddDefaultValueToRatings < ActiveRecord::Migration
  def change
    change_column :reviews, :ratings, :integer, :default => 0
  end
end

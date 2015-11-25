class ChangeNullFalseToRatings < ActiveRecord::Migration
  def change
    change_column :reviews, :ratings, :integer, :null => false
  end
end

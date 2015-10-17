class AddRatingsToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :ratings, :integer
  end
end

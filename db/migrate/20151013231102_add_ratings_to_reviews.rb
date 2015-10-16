class AddRatingsIdToReviews < ActiveRecord::Migration
  def change
    add_column :ratings, :ratings, :integer
  end
end

class AddStoreIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :store_id, :integer
  end
end

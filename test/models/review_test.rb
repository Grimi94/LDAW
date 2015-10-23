require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  
  def setup
    @user = users(:user1)
    @store = store(:one)
    # This code is not idiomatically correct.
    @review = Review.new(content: "Lorem ipsum", user_id: @user.id, store_id: @store.id)
  end
  
end

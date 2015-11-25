require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  def setup
    @review = Review.new(content: "Example content", user_id: 1, store_id: 1, ratings: 3)
  end

  test "should be valid" do
    assert @review.valid?
  end
  
  test "ratings should be present" do
    @review.ratings = null
    assert_not @ratings.valid?
  end
end

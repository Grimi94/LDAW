require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get userLogged" do
    get :userLogged
    assert_response :success
  end

end

require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  
  test "login with invalid information" do
    get new_user_session_path
    assert_template 'users/sessions/new'
    post new_user_session_path, session: { email: "", password: "" }
    assert_template 'users/sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
  
end

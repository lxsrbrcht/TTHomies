require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_show_url
    assert_response :success
  end

  test "should get my_profile" do
    get user_my_profile_url
    assert_response :success
  end
end

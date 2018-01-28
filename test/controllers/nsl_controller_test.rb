require 'test_helper'

class NslControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get nsl_home_url
    assert_response :success
  end

end

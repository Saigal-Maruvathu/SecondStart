require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get landingpage" do
    get home_landingpage_url
    assert_response :success
  end

  test "should get logoutpage" do
    get home_logoutpage_url
    assert_response :success
  end

end

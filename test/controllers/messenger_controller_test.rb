require "test_helper"

class MessengerControllerTest < ActionDispatch::IntegrationTest
  test "should return forbidden when verify token is missing" do
    get webhook_url
    assert_response :forbidden
  end

  test "should return ok when receive has no content" do
    post webhook_url
    assert_response :success
  end
end

require "test_helper"

class MessengerControllerTest < ActionDispatch::IntegrationTest
  test "should get verify" do
    get messenger_verify_url
    assert_response :success
  end

  test "should get receive" do
    get messenger_receive_url
    assert_response :success
  end
end

require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get message" do
    get rooms_message_url
    assert_response :success
  end

end

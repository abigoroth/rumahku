require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get guestregister" do
    get pages_guestregister_url
    assert_response :success
  end

end

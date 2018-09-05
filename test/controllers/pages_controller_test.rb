require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get space_rental" do
    get pages_space_rental_url
    assert_response :success
  end

end

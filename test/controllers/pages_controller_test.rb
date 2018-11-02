require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get floor_plan" do
    get pages_floor_plan_url
    assert_response :success
  end

end

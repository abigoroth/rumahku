require 'test_helper'

class FloorplansControllerTest < ActionDispatch::IntegrationTest
  test "should get _maparea_field" do
    get floorplans__maparea_field_url
    assert_response :success
  end

end

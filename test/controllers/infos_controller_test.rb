require 'test_helper'

class InfosControllerTest < ActionDispatch::IntegrationTest
  test "should get _member_fields" do
    get infos__member_fields_url
    assert_response :success
  end

end

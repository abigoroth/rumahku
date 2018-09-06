require 'test_helper'

class ParkspacelogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parkspacelog = parkspacelogs(:one)
  end

  test "should get index" do
    get parkspacelogs_url
    assert_response :success
  end

  test "should get new" do
    get new_parkspacelog_url
    assert_response :success
  end

  test "should create parkspacelog" do
    assert_difference('Parkspacelog.count') do
      post parkspacelogs_url, params: { parkspacelog: { date: @parkspacelog.date, message: @parkspacelog.message, parking_no: @parkspacelog.parking_no } }
    end

    assert_redirected_to parkspacelog_url(Parkspacelog.last)
  end

  test "should show parkspacelog" do
    get parkspacelog_url(@parkspacelog)
    assert_response :success
  end

  test "should get edit" do
    get edit_parkspacelog_url(@parkspacelog)
    assert_response :success
  end

  test "should update parkspacelog" do
    patch parkspacelog_url(@parkspacelog), params: { parkspacelog: { date: @parkspacelog.date, message: @parkspacelog.message, parking_no: @parkspacelog.parking_no } }
    assert_redirected_to parkspacelog_url(@parkspacelog)
  end

  test "should destroy parkspacelog" do
    assert_difference('Parkspacelog.count', -1) do
      delete parkspacelog_url(@parkspacelog)
    end

    assert_redirected_to parkspacelogs_url
  end
end

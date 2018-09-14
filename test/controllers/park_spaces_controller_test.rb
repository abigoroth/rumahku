require 'test_helper'

class ParkSpacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @park_space = park_spaces(:one)
  end

  test "should get index" do
    get park_spaces_url
    assert_response :success
  end

  test "should get new" do
    get new_park_space_url
    assert_response :success
  end

  test "should create park_space" do
    assert_difference('ParkSpace.count') do
      post park_spaces_url, params: { park_space: { available: @park_space.available, parknum: @park_space.parknum, spacetype: @park_space.spacetype } }
    end

    assert_redirected_to park_space_url(ParkSpace.last)
  end

  test "should show park_space" do
    get park_space_url(@park_space)
    assert_response :success
  end

  test "should get edit" do
    get edit_park_space_url(@park_space)
    assert_response :success
  end

  test "should update park_space" do
    patch park_space_url(@park_space), params: { park_space: { available: @park_space.available, parknum: @park_space.parknum, spacetype: @park_space.spacetype } }
    assert_redirected_to park_space_url(@park_space)
  end

  test "should destroy park_space" do
    assert_difference('ParkSpace.count', -1) do
      delete park_space_url(@park_space)
    end

    assert_redirected_to park_spaces_url
  end
end

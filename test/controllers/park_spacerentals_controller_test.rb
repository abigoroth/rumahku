require 'test_helper'

class ParkSpacerentalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @park_spacerental = park_spacerentals(:one)
  end

  test "should get index" do
    get park_spacerentals_url
    assert_response :success
  end

  test "should get new" do
    get new_park_spacerental_url
    assert_response :success
  end

  test "should create park_spacerental" do
    assert_difference('ParkSpacerental.count') do
      post park_spacerentals_url, params: { park_spacerental: { car_id: @park_spacerental.car_id, end_rent: @park_spacerental.end_rent, price: @park_spacerental.price, ps_id: @park_spacerental.ps_id, start_rent: @park_spacerental.start_rent } }
    end

    assert_redirected_to park_spacerental_url(ParkSpacerental.last)
  end

  test "should show park_spacerental" do
    get park_spacerental_url(@park_spacerental)
    assert_response :success
  end

  test "should get edit" do
    get edit_park_spacerental_url(@park_spacerental)
    assert_response :success
  end

  test "should update park_spacerental" do
    patch park_spacerental_url(@park_spacerental), params: { park_spacerental: { car_id: @park_spacerental.car_id, end_rent: @park_spacerental.end_rent, price: @park_spacerental.price, ps_id: @park_spacerental.ps_id, start_rent: @park_spacerental.start_rent } }
    assert_redirected_to park_spacerental_url(@park_spacerental)
  end

  test "should destroy park_spacerental" do
    assert_difference('ParkSpacerental.count', -1) do
      delete park_spacerental_url(@park_spacerental)
    end

    assert_redirected_to park_spacerentals_url
  end
end

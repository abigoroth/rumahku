require 'test_helper'

class ParkingqueuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parkingqueue = parkingqueues(:one)
  end

  test "should get index" do
    get parkingqueues_url
    assert_response :success
  end

  test "should get new" do
    get new_parkingqueue_url
    assert_response :success
  end

  test "should create parkingqueue" do
    assert_difference('Parkingqueue.count') do
      post parkingqueues_url, params: { parkingqueue: { apartment_number: @parkingqueue.apartment_number, date: @parkingqueue.date, name: @parkingqueue.name } }
    end

    assert_redirected_to parkingqueue_url(Parkingqueue.last)
  end

  test "should show parkingqueue" do
    get parkingqueue_url(@parkingqueue)
    assert_response :success
  end

  test "should get edit" do
    get edit_parkingqueue_url(@parkingqueue)
    assert_response :success
  end

  test "should update parkingqueue" do
    patch parkingqueue_url(@parkingqueue), params: { parkingqueue: { apartment_number: @parkingqueue.apartment_number, date: @parkingqueue.date, name: @parkingqueue.name } }
    assert_redirected_to parkingqueue_url(@parkingqueue)
  end

  test "should destroy parkingqueue" do
    assert_difference('Parkingqueue.count', -1) do
      delete parkingqueue_url(@parkingqueue)
    end

    assert_redirected_to parkingqueues_url
  end
end

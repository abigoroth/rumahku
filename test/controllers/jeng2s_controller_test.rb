require 'test_helper'

class Jeng2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jeng2 = jeng2s(:one)
  end

  test "should get index" do
    get jeng2s_url
    assert_response :success
  end

  test "should get new" do
    get new_jeng2_url
    assert_response :success
  end

  test "should create jeng2" do
    assert_difference('Jeng2.count') do
      post jeng2s_url, params: { jeng2: { age: @jeng2.age, apartment_type: @jeng2.apartment_type, level: @jeng2.level, name: @jeng2.name, number_apartment: @jeng2.number_apartment, parking_number: @jeng2.parking_number, phone_number: @jeng2.phone_number } }
    end

    assert_redirected_to jeng2_url(Jeng2.last)
  end

  test "should show jeng2" do
    get jeng2_url(@jeng2)
    assert_response :success
  end

  test "should get edit" do
    get edit_jeng2_url(@jeng2)
    assert_response :success
  end

  test "should update jeng2" do
    patch jeng2_url(@jeng2), params: { jeng2: { age: @jeng2.age, apartment_type: @jeng2.apartment_type, level: @jeng2.level, name: @jeng2.name, number_apartment: @jeng2.number_apartment, parking_number: @jeng2.parking_number, phone_number: @jeng2.phone_number } }
    assert_redirected_to jeng2_url(@jeng2)
  end

  test "should destroy jeng2" do
    assert_difference('Jeng2.count', -1) do
      delete jeng2_url(@jeng2)
    end

    assert_redirected_to jeng2s_url
  end
end

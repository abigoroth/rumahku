require 'test_helper'

class Jeng3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jeng3 = jeng3s(:one)
  end

  test "should get index" do
    get jeng3s_url
    assert_response :success
  end

  test "should get new" do
    get new_jeng3_url
    assert_response :success
  end

  test "should create jeng3" do
    assert_difference('Jeng3.count') do
      post jeng3s_url, params: { jeng3: { age: @jeng3.age, apartment_type: @jeng3.apartment_type, level: @jeng3.level, name: @jeng3.name, number_apartment: @jeng3.number_apartment, parking_number: @jeng3.parking_number, phone_number: @jeng3.phone_number } }
    end

    assert_redirected_to jeng3_url(Jeng3.last)
  end

  test "should show jeng3" do
    get jeng3_url(@jeng3)
    assert_response :success
  end

  test "should get edit" do
    get edit_jeng3_url(@jeng3)
    assert_response :success
  end

  test "should update jeng3" do
    patch jeng3_url(@jeng3), params: { jeng3: { age: @jeng3.age, apartment_type: @jeng3.apartment_type, level: @jeng3.level, name: @jeng3.name, number_apartment: @jeng3.number_apartment, parking_number: @jeng3.parking_number, phone_number: @jeng3.phone_number } }
    assert_redirected_to jeng3_url(@jeng3)
  end

  test "should destroy jeng3" do
    assert_difference('Jeng3.count', -1) do
      delete jeng3_url(@jeng3)
    end

    assert_redirected_to jeng3s_url
  end
end

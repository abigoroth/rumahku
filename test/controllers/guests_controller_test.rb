<<<<<<< HEAD
require 'test_helper'

class GuestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guest = guests(:one)
  end

  test "should get index" do
    get guests_url
    assert_response :success
  end

  test "should get new" do
    get new_guest_url
    assert_response :success
  end

  test "should create guest" do
    assert_difference('Guest.count') do
      post guests_url, params: { guest: { block: @guest.block, date: @guest.date, no_apartment: @guest.no_apartment, phone_number: @guest.phone_number, plat_number: @guest.plat_number, purpose: @guest.purpose } }
    end

    assert_redirected_to guest_url(Guest.last)
  end

  test "should show guest" do
    get guest_url(@guest)
    assert_response :success
  end

  test "should get edit" do
    get edit_guest_url(@guest)
    assert_response :success
  end

  test "should update guest" do
    patch guest_url(@guest), params: { guest: { block: @guest.block, date: @guest.date, no_apartment: @guest.no_apartment, phone_number: @guest.phone_number, plat_number: @guest.plat_number, purpose: @guest.purpose } }
    assert_redirected_to guest_url(@guest)
  end

  test "should destroy guest" do
    assert_difference('Guest.count', -1) do
      delete guest_url(@guest)
    end

    assert_redirected_to guests_url
  end
end
=======
require 'test_helper'

class GuestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guest = guests(:one)
  end

  test "should get index" do
    get guests_url
    assert_response :success
  end

  test "should get new" do
    get new_guest_url
    assert_response :success
  end

  test "should create guest" do
    assert_difference('Guest.count') do
      post guests_url, params: { guest: { block: @guest.block, date: @guest.date, no_apartment: @guest.no_apartment, phone_number: @guest.phone_number, plat_number: @guest.plat_number, purpose: @guest.purpose } }
    end

    assert_redirected_to guest_url(Guest.last)
  end

  test "should show guest" do
    get guest_url(@guest)
    assert_response :success
  end

  test "should get edit" do
    get edit_guest_url(@guest)
    assert_response :success
  end

  test "should update guest" do
    patch guest_url(@guest), params: { guest: { block: @guest.block, date: @guest.date, no_apartment: @guest.no_apartment, phone_number: @guest.phone_number, plat_number: @guest.plat_number, purpose: @guest.purpose } }
    assert_redirected_to guest_url(@guest)
  end

  test "should destroy guest" do
    assert_difference('Guest.count', -1) do
      delete guest_url(@guest)
    end

    assert_redirected_to guests_url
  end
end
>>>>>>> 6c0fc0d134d542fcdbd0c0602a0de364ad80eff7

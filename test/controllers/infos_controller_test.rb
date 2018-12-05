require 'test_helper'

class InfosControllerTest < ActionDispatch::IntegrationTest
  test "should get _member_fields" do
    get infos__member_fields_url
    assert_response :success
  end
  require 'test_helper'


  setup do
    @info = infos(:one)
  end

  test "should get index" do
    get infos_url
    assert_response :success
  end

  test "should get new" do
    get new_info_url
    assert_response :success
  end

  test "should create info" do
    assert_difference('Info.count') do
      post infos_url, params: { info: { apartmentnum: @info.apartmentnum, email: @info.email, name: @info.name, owner: @info.owner, password: @info.password, phonenumber: @info.phonenumber, picture: @info.picture } }
    end

    assert_redirected_to info_url(Info.last)
  end

  test "should show info" do
    get info_url(@info)
    assert_response :success
  end

  test "should get edit" do
    get edit_info_url(@info)
    assert_response :success
  end

  test "should update info" do
    patch info_url(@info), params: { info: { apartmentnum: @info.apartmentnum, email: @info.email, name: @info.name, owner: @info.owner, password: @info.password, phonenumber: @info.phonenumber, picture: @info.picture } }
    assert_redirected_to info_url(@info)
  end

  test "should destroy info" do
    assert_difference('Info.count', -1) do
      delete info_url(@info)
    end

    assert_redirected_to infos_url
  end
end

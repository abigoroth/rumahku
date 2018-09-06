require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  test "should get residentlist" do
    get pages_residentlist_url
=======
  test "should get main" do
    get pages_main_url
>>>>>>> 6c0fc0d134d542fcdbd0c0602a0de364ad80eff7
  test "should get space_rental" do
    get pages_space_rental_url
    assert_response :success
  end

end

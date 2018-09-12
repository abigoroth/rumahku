require "application_system_test_case"

class ResTest < ApplicationSystemTestCase
  setup do
    @re = res(:one)
  end

  test "visiting the index" do
    visit res_url
    assert_selector "h1", text: "Res"
  end

  test "creating a Re" do
    visit res_url
    click_on "New Re"

    fill_in "Apartmentnum", with: @re.apartmentnum
    fill_in "Email", with: @re.email
    fill_in "Name", with: @re.name
    fill_in "Owner", with: @re.owner
    fill_in "Password", with: @re.password
    fill_in "Phonenumber", with: @re.phonenumber
    fill_in "Picture", with: @re.picture
    click_on "Create Re"

    assert_text "Re was successfully created"
    click_on "Back"
  end

  test "updating a Re" do
    visit res_url
    click_on "Edit", match: :first

    fill_in "Apartmentnum", with: @re.apartmentnum
    fill_in "Email", with: @re.email
    fill_in "Name", with: @re.name
    fill_in "Owner", with: @re.owner
    fill_in "Password", with: @re.password
    fill_in "Phonenumber", with: @re.phonenumber
    fill_in "Picture", with: @re.picture
    click_on "Update Re"

    assert_text "Re was successfully updated"
    click_on "Back"
  end

  test "destroying a Re" do
    visit res_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Re was successfully destroyed"
  end
end

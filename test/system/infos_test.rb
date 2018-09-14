require "application_system_test_case"

class InfosTest < ApplicationSystemTestCase
  setup do
    @info = infos(:one)
  end

  test "visiting the index" do
    visit infos_url
    assert_selector "h1", text: "Infos"
  end

  test "creating a Info" do
    visit infos_url
    click_on "New Info"

    fill_in "Apartmentnum", with: @info.apartmentnum
    fill_in "Email", with: @info.email
    fill_in "Name", with: @info.name
    fill_in "Owner", with: @info.owner
    fill_in "Password", with: @info.password
    fill_in "Phonenumber", with: @info.phonenumber
    fill_in "Picture", with: @info.picture
    click_on "Create Info"

    assert_text "Info was successfully created"
    click_on "Back"
  end

  test "updating a Info" do
    visit infos_url
    click_on "Edit", match: :first

    fill_in "Apartmentnum", with: @info.apartmentnum
    fill_in "Email", with: @info.email
    fill_in "Name", with: @info.name
    fill_in "Owner", with: @info.owner
    fill_in "Password", with: @info.password
    fill_in "Phonenumber", with: @info.phonenumber
    fill_in "Picture", with: @info.picture
    click_on "Update Info"

    assert_text "Info was successfully updated"
    click_on "Back"
  end

  test "destroying a Info" do
    visit infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Info was successfully destroyed"
  end
end

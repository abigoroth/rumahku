require "application_system_test_case"

class GuestsTest < ApplicationSystemTestCase
  setup do
    @guest = guests(:one)
  end

  test "visiting the index" do
    visit guests_url
    assert_selector "h1", text: "Guests"
  end

  test "creating a Guest" do
    visit guests_url
    click_on "New Guest"

    fill_in "Block", with: @guest.block
    fill_in "Date", with: @guest.date
    fill_in "No Apartment", with: @guest.no_apartment
    fill_in "Phone Number", with: @guest.phone_number
    fill_in "Plat Number", with: @guest.plat_number
    fill_in "Purpose", with: @guest.purpose
    click_on "Create Guest"

    assert_text "Guest was successfully created"
    click_on "Back"
  end

  test "updating a Guest" do
    visit guests_url
    click_on "Edit", match: :first

    fill_in "Block", with: @guest.block
    fill_in "Date", with: @guest.date
    fill_in "No Apartment", with: @guest.no_apartment
    fill_in "Phone Number", with: @guest.phone_number
    fill_in "Plat Number", with: @guest.plat_number
    fill_in "Purpose", with: @guest.purpose
    click_on "Update Guest"

    assert_text "Guest was successfully updated"
    click_on "Back"
  end

  test "destroying a Guest" do
    visit guests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Guest was successfully destroyed"
  end
end

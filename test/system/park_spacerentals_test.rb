require "application_system_test_case"

class ParkSpacerentalsTest < ApplicationSystemTestCase
  setup do
    @park_spacerental = park_spacerentals(:one)
  end

  test "visiting the index" do
    visit park_spacerentals_url
    assert_selector "h1", text: "Park Spacerentals"
  end

  test "creating a Park spacerental" do
    visit park_spacerentals_url
    click_on "New Park Spacerental"

    fill_in "Car", with: @park_spacerental.car_id
    fill_in "End Rent", with: @park_spacerental.end_rent
    fill_in "Price", with: @park_spacerental.price
    fill_in "Ps", with: @park_spacerental.ps_id
    fill_in "Start Rent", with: @park_spacerental.start_rent
    click_on "Create Park spacerental"

    assert_text "Park spacerental was successfully created"
    click_on "Back"
  end

  test "updating a Park spacerental" do
    visit park_spacerentals_url
    click_on "Edit", match: :first

    fill_in "Car", with: @park_spacerental.car_id
    fill_in "End Rent", with: @park_spacerental.end_rent
    fill_in "Price", with: @park_spacerental.price
    fill_in "Ps", with: @park_spacerental.ps_id
    fill_in "Start Rent", with: @park_spacerental.start_rent
    click_on "Update Park spacerental"

    assert_text "Park spacerental was successfully updated"
    click_on "Back"
  end

  test "destroying a Park spacerental" do
    visit park_spacerentals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Park spacerental was successfully destroyed"
  end
end

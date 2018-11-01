require "application_system_test_case"

class ParkingqueuesTest < ApplicationSystemTestCase
  setup do
    @parkingqueue = parkingqueues(:one)
  end

  test "visiting the index" do
    visit parkingqueues_url
    assert_selector "h1", text: "Parkingqueues"
  end

  test "creating a Parkingqueue" do
    visit parkingqueues_url
    click_on "New Parkingqueue"

    fill_in "Apartment Number", with: @parkingqueue.apartment_number
    fill_in "Date", with: @parkingqueue.date
    fill_in "Name", with: @parkingqueue.name
    click_on "Create Parkingqueue"

    assert_text "Parkingqueue was successfully created"
    click_on "Back"
  end

  test "updating a Parkingqueue" do
    visit parkingqueues_url
    click_on "Edit", match: :first

    fill_in "Apartment Number", with: @parkingqueue.apartment_number
    fill_in "Date", with: @parkingqueue.date
    fill_in "Name", with: @parkingqueue.name
    click_on "Update Parkingqueue"

    assert_text "Parkingqueue was successfully updated"
    click_on "Back"
  end

  test "destroying a Parkingqueue" do
    visit parkingqueues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parkingqueue was successfully destroyed"
  end
end

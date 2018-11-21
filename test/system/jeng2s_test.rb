require "application_system_test_case"

class Jeng2sTest < ApplicationSystemTestCase
  setup do
    @jeng2 = jeng2s(:one)
  end

  test "visiting the index" do
    visit jeng2s_url
    assert_selector "h1", text: "Jeng2s"
  end

  test "creating a Jeng2" do
    visit jeng2s_url
    click_on "New Jeng2"

    fill_in "Age", with: @jeng2.age
    fill_in "Apartment Type", with: @jeng2.apartment_type
    fill_in "Level", with: @jeng2.level
    fill_in "Name", with: @jeng2.name
    fill_in "Number Apartment", with: @jeng2.number_apartment
    fill_in "Parking Number", with: @jeng2.parking_number
    fill_in "Phone Number", with: @jeng2.phone_number
    click_on "Create Jeng2"

    assert_text "Jeng2 was successfully created"
    click_on "Back"
  end

  test "updating a Jeng2" do
    visit jeng2s_url
    click_on "Edit", match: :first

    fill_in "Age", with: @jeng2.age
    fill_in "Apartment Type", with: @jeng2.apartment_type
    fill_in "Level", with: @jeng2.level
    fill_in "Name", with: @jeng2.name
    fill_in "Number Apartment", with: @jeng2.number_apartment
    fill_in "Parking Number", with: @jeng2.parking_number
    fill_in "Phone Number", with: @jeng2.phone_number
    click_on "Update Jeng2"

    assert_text "Jeng2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Jeng2" do
    visit jeng2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jeng2 was successfully destroyed"
  end
end

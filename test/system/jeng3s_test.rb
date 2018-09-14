require "application_system_test_case"

class Jeng3sTest < ApplicationSystemTestCase
  setup do
    @jeng3 = jeng3s(:one)
  end

  test "visiting the index" do
    visit jeng3s_url
    assert_selector "h1", text: "Jeng3s"
  end

  test "creating a Jeng3" do
    visit jeng3s_url
    click_on "New Jeng3"

    fill_in "Age", with: @jeng3.age
    fill_in "Apartment Type", with: @jeng3.apartment_type
    fill_in "Level", with: @jeng3.level
    fill_in "Name", with: @jeng3.name
    fill_in "Number Apartment", with: @jeng3.number_apartment
    fill_in "Parking Number", with: @jeng3.parking_number
    fill_in "Phone Number", with: @jeng3.phone_number
    click_on "Create Jeng3"

    assert_text "Jeng3 was successfully created"
    click_on "Back"
  end

  test "updating a Jeng3" do
    visit jeng3s_url
    click_on "Edit", match: :first

    fill_in "Age", with: @jeng3.age
    fill_in "Apartment Type", with: @jeng3.apartment_type
    fill_in "Level", with: @jeng3.level
    fill_in "Name", with: @jeng3.name
    fill_in "Number Apartment", with: @jeng3.number_apartment
    fill_in "Parking Number", with: @jeng3.parking_number
    fill_in "Phone Number", with: @jeng3.phone_number
    click_on "Update Jeng3"

    assert_text "Jeng3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Jeng3" do
    visit jeng3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jeng3 was successfully destroyed"
  end
end

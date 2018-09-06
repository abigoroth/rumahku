require "application_system_test_case"

class ParkSpacesTest < ApplicationSystemTestCase
  setup do
    @park_space = park_spaces(:one)
  end

  test "visiting the index" do
    visit park_spaces_url
    assert_selector "h1", text: "Park Spaces"
  end

  test "creating a Park space" do
    visit park_spaces_url
    click_on "New Park Space"

    fill_in "Available", with: @park_space.available
    fill_in "Parknum", with: @park_space.parknum
    fill_in "Spacetype", with: @park_space.spacetype
    click_on "Create Park space"

    assert_text "Park space was successfully created"
    click_on "Back"
  end

  test "updating a Park space" do
    visit park_spaces_url
    click_on "Edit", match: :first

    fill_in "Available", with: @park_space.available
    fill_in "Parknum", with: @park_space.parknum
    fill_in "Spacetype", with: @park_space.spacetype
    click_on "Update Park space"

    assert_text "Park space was successfully updated"
    click_on "Back"
  end

  test "destroying a Park space" do
    visit park_spaces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Park space was successfully destroyed"
  end
end

require "application_system_test_case"

class ParkspacelogsTest < ApplicationSystemTestCase
  setup do
    @parkspacelog = parkspacelogs(:one)
  end

  test "visiting the index" do
    visit parkspacelogs_url
    assert_selector "h1", text: "Parkspacelogs"
  end

  test "creating a Parkspacelog" do
    visit parkspacelogs_url
    click_on "New Parkspacelog"

    fill_in "Date", with: @parkspacelog.date
    fill_in "Message", with: @parkspacelog.message
    fill_in "Parking No", with: @parkspacelog.parking_no
    click_on "Create Parkspacelog"

    assert_text "Parkspacelog was successfully created"
    click_on "Back"
  end

  test "updating a Parkspacelog" do
    visit parkspacelogs_url
    click_on "Edit", match: :first

    fill_in "Date", with: @parkspacelog.date
    fill_in "Message", with: @parkspacelog.message
    fill_in "Parking No", with: @parkspacelog.parking_no
    click_on "Update Parkspacelog"

    assert_text "Parkspacelog was successfully updated"
    click_on "Back"
  end

  test "destroying a Parkspacelog" do
    visit parkspacelogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parkspacelog was successfully destroyed"
  end
end

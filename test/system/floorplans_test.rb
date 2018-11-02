require "application_system_test_case"

class FloorplansTest < ApplicationSystemTestCase
  setup do
    @floorplan = floorplans(:one)
  end

  test "visiting the index" do
    visit floorplans_url
    assert_selector "h1", text: "Floorplans"
  end

  test "creating a Floorplan" do
    visit floorplans_url
    click_on "New Floorplan"

    fill_in "Description", with: @floorplan.description
    fill_in "Name", with: @floorplan.name
    click_on "Create Floorplan"

    assert_text "Floorplan was successfully created"
    click_on "Back"
  end

  test "updating a Floorplan" do
    visit floorplans_url
    click_on "Edit", match: :first

    fill_in "Description", with: @floorplan.description
    fill_in "Name", with: @floorplan.name
    click_on "Update Floorplan"

    assert_text "Floorplan was successfully updated"
    click_on "Back"
  end

  test "destroying a Floorplan" do
    visit floorplans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Floorplan was successfully destroyed"
  end
end

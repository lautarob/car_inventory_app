require "application_system_test_case"

class DealershipsTest < ApplicationSystemTestCase
  setup do
    @dealership = dealerships(:one)
  end

  test "visiting the index" do
    visit dealerships_url
    assert_selector "h1", text: "Dealerships"
  end

  test "should create dealership" do
    visit dealerships_url
    click_on "New dealership"

    fill_in "Description", with: @dealership.description
    fill_in "Location", with: @dealership.location
    fill_in "Name", with: @dealership.name
    click_on "Create Dealership"

    assert_text "Dealership was successfully created"
    click_on "Back"
  end

  test "should update Dealership" do
    visit dealership_url(@dealership)
    click_on "Edit this dealership", match: :first

    fill_in "Description", with: @dealership.description
    fill_in "Location", with: @dealership.location
    fill_in "Name", with: @dealership.name
    click_on "Update Dealership"

    assert_text "Dealership was successfully updated"
    click_on "Back"
  end

  test "should destroy Dealership" do
    visit dealership_url(@dealership)
    click_on "Destroy this dealership", match: :first

    assert_text "Dealership was successfully destroyed"
  end
end

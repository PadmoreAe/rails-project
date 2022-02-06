require "application_system_test_case"

class SignboardsTest < ApplicationSystemTestCase
  setup do
    @signboard = signboards(:one)
  end

  test "visiting the index" do
    visit signboards_url
    assert_selector "h1", text: "Signboards"
  end

  test "creating a Signboard" do
    visit signboards_url
    click_on "New Signboard"

    fill_in "Address", with: @signboard.address
    fill_in "Height", with: @signboard.height
    fill_in "Name", with: @signboard.name
    fill_in "Owner", with: @signboard.owner_id
    fill_in "Width", with: @signboard.width
    click_on "Create Signboard"

    assert_text "Signboard was successfully created"
    click_on "Back"
  end

  test "updating a Signboard" do
    visit signboards_url
    click_on "Edit", match: :first

    fill_in "Address", with: @signboard.address
    fill_in "Height", with: @signboard.height
    fill_in "Name", with: @signboard.name
    fill_in "Owner", with: @signboard.owner_id
    fill_in "Width", with: @signboard.width
    click_on "Update Signboard"

    assert_text "Signboard was successfully updated"
    click_on "Back"
  end

  test "destroying a Signboard" do
    visit signboards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Signboard was successfully destroyed"
  end
end

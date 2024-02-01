require "application_system_test_case"

class ArtiiclesTest < ApplicationSystemTestCase
  setup do
    @artiicle = artiicles(:one)
  end

  test "visiting the index" do
    visit artiicles_url
    assert_selector "h1", text: "Artiicles"
  end

  test "should create artiicle" do
    visit artiicles_url
    click_on "New artiicle"

    fill_in "Description", with: @artiicle.description
    fill_in "Title", with: @artiicle.title
    click_on "Create Artiicle"

    assert_text "Artiicle was successfully created"
    click_on "Back"
  end

  test "should update Artiicle" do
    visit artiicle_url(@artiicle)
    click_on "Edit this artiicle", match: :first

    fill_in "Description", with: @artiicle.description
    fill_in "Title", with: @artiicle.title
    click_on "Update Artiicle"

    assert_text "Artiicle was successfully updated"
    click_on "Back"
  end

  test "should destroy Artiicle" do
    visit artiicle_url(@artiicle)
    click_on "Destroy this artiicle", match: :first

    assert_text "Artiicle was successfully destroyed"
  end
end

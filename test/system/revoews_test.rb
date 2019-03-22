require "application_system_test_case"

class RevoewsTest < ApplicationSystemTestCase
  setup do
    @revoew = revoews(:one)
  end

  test "visiting the index" do
    visit revoews_url
    assert_selector "h1", text: "Revoews"
  end

  test "creating a Revoew" do
    visit revoews_url
    click_on "New Revoew"

    fill_in "Comment", with: @revoew.comment
    fill_in "Rating", with: @revoew.rating
    click_on "Create Revoew"

    assert_text "Revoew was successfully created"
    click_on "Back"
  end

  test "updating a Revoew" do
    visit revoews_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @revoew.comment
    fill_in "Rating", with: @revoew.rating
    click_on "Update Revoew"

    assert_text "Revoew was successfully updated"
    click_on "Back"
  end

  test "destroying a Revoew" do
    visit revoews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Revoew was successfully destroyed"
  end
end

require "application_system_test_case"

class Lessons2sTest < ApplicationSystemTestCase
  setup do
    @lessons2 = lessons2s(:one)
  end

  test "visiting the index" do
    visit lessons2s_url
    assert_selector "h1", text: "Lessons2s"
  end

  test "creating a Lessons2" do
    visit lessons2s_url
    click_on "New Lessons2"

    fill_in "Content", with: @lessons2.content
    fill_in "Courses", with: @lessons2.courses_id
    fill_in "Title", with: @lessons2.title
    click_on "Create Lessons2"

    assert_text "Lessons2 was successfully created"
    click_on "Back"
  end

  test "updating a Lessons2" do
    visit lessons2s_url
    click_on "Edit", match: :first

    fill_in "Content", with: @lessons2.content
    fill_in "Courses", with: @lessons2.courses_id
    fill_in "Title", with: @lessons2.title
    click_on "Update Lessons2"

    assert_text "Lessons2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Lessons2" do
    visit lessons2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lessons2 was successfully destroyed"
  end
end

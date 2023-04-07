require "application_system_test_case"

class Lessons1sTest < ApplicationSystemTestCase
  setup do
    @lessons1 = lessons1s(:one)
  end

  test "visiting the index" do
    visit lessons1s_url
    assert_selector "h1", text: "Lessons1s"
  end

  test "creating a Lessons1" do
    visit lessons1s_url
    click_on "New Lessons1"

    fill_in "Content", with: @lessons1.content
    fill_in "Course", with: @lessons1.course
    fill_in "Title", with: @lessons1.title
    click_on "Create Lessons1"

    assert_text "Lessons1 was successfully created"
    click_on "Back"
  end

  test "updating a Lessons1" do
    visit lessons1s_url
    click_on "Edit", match: :first

    fill_in "Content", with: @lessons1.content
    fill_in "Course", with: @lessons1.course
    fill_in "Title", with: @lessons1.title
    click_on "Update Lessons1"

    assert_text "Lessons1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Lessons1" do
    visit lessons1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lessons1 was successfully destroyed"
  end
end

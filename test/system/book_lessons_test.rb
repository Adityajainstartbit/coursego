require "application_system_test_case"

class BookLessonsTest < ApplicationSystemTestCase
  setup do
    @book_lesson = book_lessons(:one)
  end

  test "visiting the index" do
    visit book_lessons_url
    assert_selector "h1", text: "Book Lessons"
  end

  test "creating a Book lesson" do
    visit book_lessons_url
    click_on "New Book Lesson"

    fill_in "Content", with: @book_lesson.content
    fill_in "Course", with: @book_lesson.course_id
    fill_in "Title", with: @book_lesson.title
    click_on "Create Book lesson"

    assert_text "Book lesson was successfully created"
    click_on "Back"
  end

  test "updating a Book lesson" do
    visit book_lessons_url
    click_on "Edit", match: :first

    fill_in "Content", with: @book_lesson.content
    fill_in "Course", with: @book_lesson.course_id
    fill_in "Title", with: @book_lesson.title
    click_on "Update Book lesson"

    assert_text "Book lesson was successfully updated"
    click_on "Back"
  end

  test "destroying a Book lesson" do
    visit book_lessons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book lesson was successfully destroyed"
  end
end

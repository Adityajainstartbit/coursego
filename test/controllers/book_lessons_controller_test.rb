require "test_helper"

class BookLessonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_lesson = book_lessons(:one)
  end

  test "should get index" do
    get book_lessons_url
    assert_response :success
  end

  test "should get new" do
    get new_book_lesson_url
    assert_response :success
  end

  test "should create book_lesson" do
    assert_difference('BookLesson.count') do
      post book_lessons_url, params: { book_lesson: { content: @book_lesson.content, course_id: @book_lesson.course_id, title: @book_lesson.title } }
    end

    assert_redirected_to book_lesson_url(BookLesson.last)
  end

  test "should show book_lesson" do
    get book_lesson_url(@book_lesson)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_lesson_url(@book_lesson)
    assert_response :success
  end

  test "should update book_lesson" do
    patch book_lesson_url(@book_lesson), params: { book_lesson: { content: @book_lesson.content, course_id: @book_lesson.course_id, title: @book_lesson.title } }
    assert_redirected_to book_lesson_url(@book_lesson)
  end

  test "should destroy book_lesson" do
    assert_difference('BookLesson.count', -1) do
      delete book_lesson_url(@book_lesson)
    end

    assert_redirected_to book_lessons_url
  end
end

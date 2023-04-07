require "test_helper"

class Lessons1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lessons1 = lessons1s(:one)
  end

  test "should get index" do
    get lessons1s_url
    assert_response :success
  end

  test "should get new" do
    get new_lessons1_url
    assert_response :success
  end

  test "should create lessons1" do
    assert_difference('Lessons1.count') do
      post lessons1s_url, params: { lessons1: { content: @lessons1.content, course: @lessons1.course, title: @lessons1.title } }
    end

    assert_redirected_to lessons1_url(Lessons1.last)
  end

  test "should show lessons1" do
    get lessons1_url(@lessons1)
    assert_response :success
  end

  test "should get edit" do
    get edit_lessons1_url(@lessons1)
    assert_response :success
  end

  test "should update lessons1" do
    patch lessons1_url(@lessons1), params: { lessons1: { content: @lessons1.content, course: @lessons1.course, title: @lessons1.title } }
    assert_redirected_to lessons1_url(@lessons1)
  end

  test "should destroy lessons1" do
    assert_difference('Lessons1.count', -1) do
      delete lessons1_url(@lessons1)
    end

    assert_redirected_to lessons1s_url
  end
end

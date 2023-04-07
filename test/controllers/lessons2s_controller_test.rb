require "test_helper"

class Lessons2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lessons2 = lessons2s(:one)
  end

  test "should get index" do
    get lessons2s_url
    assert_response :success
  end

  test "should get new" do
    get new_lessons2_url
    assert_response :success
  end

  test "should create lessons2" do
    assert_difference('Lessons2.count') do
      post lessons2s_url, params: { lessons2: { content: @lessons2.content, courses_id: @lessons2.courses_id, title: @lessons2.title } }
    end

    assert_redirected_to lessons2_url(Lessons2.last)
  end

  test "should show lessons2" do
    get lessons2_url(@lessons2)
    assert_response :success
  end

  test "should get edit" do
    get edit_lessons2_url(@lessons2)
    assert_response :success
  end

  test "should update lessons2" do
    patch lessons2_url(@lessons2), params: { lessons2: { content: @lessons2.content, courses_id: @lessons2.courses_id, title: @lessons2.title } }
    assert_redirected_to lessons2_url(@lessons2)
  end

  test "should destroy lessons2" do
    assert_difference('Lessons2.count', -1) do
      delete lessons2_url(@lessons2)
    end

    assert_redirected_to lessons2s_url
  end
end

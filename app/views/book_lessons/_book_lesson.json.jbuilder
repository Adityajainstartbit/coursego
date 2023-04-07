json.extract! book_lesson, :id, :title, :content, :course_id, :created_at, :updated_at
json.url book_lesson_url(book_lesson, format: :json)

class BookLessonsController < ApplicationController
  before_action :set_book_lesson, only: %i[ show edit update destroy ]

  # GET /book_lessons or /book_lessons.json
  def index
    @book_lessons = BookLesson.all
  end

  # GET /book_lessons/1 or /book_lessons/1.json
  def show
  end

  # GET /book_lessons/new
  def new
    @book_lesson = BookLesson.new
  end

  # GET /book_lessons/1/edit
  def edit
  end

  # POST /book_lessons or /book_lessons.json
  def create
    @book_lesson = BookLesson.new(book_lesson_params)

    respond_to do |format|
      if @book_lesson.save
        format.html { redirect_to book_lesson_url(@book_lesson), notice: "Book lesson was successfully created." }
        format.json { render :show, status: :created, location: @book_lesson }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_lessons/1 or /book_lessons/1.json
  def update
    respond_to do |format|
      if @book_lesson.update(book_lesson_params)
        format.html { redirect_to book_lesson_url(@book_lesson), notice: "Book lesson was successfully updated." }
        format.json { render :show, status: :ok, location: @book_lesson }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_lessons/1 or /book_lessons/1.json
  def destroy
    @book_lesson.destroy

    respond_to do |format|
      format.html { redirect_to book_lessons_url, notice: "Book lesson was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_lesson
      @book_lesson = BookLesson.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_lesson_params
      params.require(:book_lesson).permit(:title, :content, :course_id)
    end
end

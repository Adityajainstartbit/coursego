class Lessons2sController < ApplicationController
  before_action :set_lessons2, only: %i[ show edit update destroy ]

  # GET /lessons2s or /lessons2s.json
  def index
    @lessons2s = Lessons2.all
  end

  # GET /lessons2s/1 or /lessons2s/1.json
  def show
  end

  # GET /lessons2s/new
  def new
    @lessons2 = Lessons2.new
  end

  # GET /lessons2s/1/edit
  def edit
  end

  # POST /lessons2s or /lessons2s.json
  def create
    @lessons2 = Lessons2.new(lessons2_params)

    respond_to do |format|
      if @lessons2.save
        format.html { redirect_to lessons2_url(@lessons2), notice: "Lessons2 was successfully created." }
        format.json { render :show, status: :created, location: @lessons2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lessons2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lessons2s/1 or /lessons2s/1.json
  def update
    respond_to do |format|
      if @lessons2.update(lessons2_params)
        format.html { redirect_to lessons2_url(@lessons2), notice: "Lessons2 was successfully updated." }
        format.json { render :show, status: :ok, location: @lessons2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lessons2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons2s/1 or /lessons2s/1.json
  def destroy
    @lessons2.destroy

    respond_to do |format|
      format.html { redirect_to lessons2s_url, notice: "Lessons2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lessons2
      @lessons2 = Lessons2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lessons2_params
      params.require(:lessons2).permit(:title, :content, :courses_id)
    end
end

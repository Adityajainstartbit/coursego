class Lessons1sController < ApplicationController
  before_action :set_lessons1, only: %i[ show edit update destroy ]

  # GET /lessons1s or /lessons1s.json
  def index
    @lessons1s = Lessons1.all
  end

  # GET /lessons1s/1 or /lessons1s/1.json
  def show
  end

  # GET /lessons1s/new
  def new
    @lessons1 = Lessons1.new
  end

  # GET /lessons1s/1/edit
  def edit
  end

  # POST /lessons1s or /lessons1s.json
  def create
    @lessons1 = Lessons1.new(lessons1_params)

    respond_to do |format|
      if @lessons1.save
        format.html { redirect_to lessons1_url(@lessons1), notice: "Lessons1 was successfully created." }
        format.json { render :show, status: :created, location: @lessons1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lessons1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lessons1s/1 or /lessons1s/1.json
  def update
    respond_to do |format|
      if @lessons1.update(lessons1_params)
        format.html { redirect_to lessons1_url(@lessons1), notice: "Lessons1 was successfully updated." }
        format.json { render :show, status: :ok, location: @lessons1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lessons1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons1s/1 or /lessons1s/1.json
  def destroy
    @lessons1.destroy

    respond_to do |format|
      format.html { redirect_to lessons1s_url, notice: "Lessons1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lessons1
      @lessons1 = Lessons1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lessons1_params
      params.require(:lessons1).permit(:title, :content, :course)
    end
end

class ArtiiclesController < ApplicationController
  before_action :set_artiicle, only: %i[ show edit update destroy ]

  # GET /artiicles or /artiicles.json
  def index
    @artiicles = Artiicle.all
  end

  # GET /artiicles/1 or /artiicles/1.json
  def show
  end

  # GET /artiicles/new
  def new
    @artiicle = Artiicle.new
  end

  # GET /artiicles/1/edit
  def edit
  end

  # POST /artiicles or /artiicles.json
  def create
    @artiicle = Artiicle.new(artiicle_params)

    respond_to do |format|
      if @artiicle.save
        format.html { redirect_to artiicle_url(@artiicle), notice: "Artiicle was successfully created." }
        format.json { render :show, status: :created, location: @artiicle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artiicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artiicles/1 or /artiicles/1.json
  def update
    respond_to do |format|
      if @artiicle.update(artiicle_params)
        format.html { redirect_to artiicle_url(@artiicle), notice: "Artiicle was successfully updated." }
        format.json { render :show, status: :ok, location: @artiicle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artiicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artiicles/1 or /artiicles/1.json
  def destroy
    @artiicle.destroy!

    respond_to do |format|
      format.html { redirect_to artiicles_url, notice: "Artiicle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artiicle
      @artiicle = Artiicle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artiicle_params
      params.require(:artiicle).permit(:title, :description)
    end
end

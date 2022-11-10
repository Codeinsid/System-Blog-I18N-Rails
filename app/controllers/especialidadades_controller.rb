class EspecialidadadesController < ApplicationController
  before_action :set_especialidadade, only: %i[ show edit update destroy ]

  # GET /especialidadades or /especialidadades.json
  def index
    @especialidadades = Especialidadade.all
  end

  # GET /especialidadades/1 or /especialidadades/1.json
  def show
  end

  # GET /especialidadades/new
  def new
    @especialidadade = Especialidadade.new
  end

  # GET /especialidadades/1/edit
  def edit
  end

  # POST /especialidadades or /especialidadades.json
  def create
    @especialidadade = Especialidadade.new(especialidadade_params)

    respond_to do |format|
      if @especialidadade.save
        format.html { redirect_to especialidadade_url(@especialidadade), notice: "Especialidadade was successfully created." }
        format.json { render :show, status: :created, location: @especialidadade }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @especialidadade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /especialidadades/1 or /especialidadades/1.json
  def update
    respond_to do |format|
      if @especialidadade.update(especialidadade_params)
        format.html { redirect_to especialidadade_url(@especialidadade), notice: "Especialidadade was successfully updated." }
        format.json { render :show, status: :ok, location: @especialidadade }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @especialidadade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especialidadades/1 or /especialidadades/1.json
  def destroy
    @especialidadade.destroy

    respond_to do |format|
      format.html { redirect_to especialidadades_url, notice: "Especialidadade was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_especialidadade
      @especialidadade = Especialidadade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def especialidadade_params
      params.require(:especialidadade).permit(:poder, :tipo)
    end
end

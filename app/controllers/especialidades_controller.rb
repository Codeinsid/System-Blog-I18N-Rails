class EspecialidadesController < ApplicationController
  before_action :set_especialidade, only: %i[ show edit update destroy ]

  # GET /especialidades or /especialidades.json
  def index
    @especialidades = Especialidade.all
  end

  # GET /especialidades/1 or /especialidades/1.json
  def show
  end

  # GET /especialidades/new
  def new
    @especialidade = Especialidade.new
  end

  # GET /especialidades/1/edit
  def edit
  end

  # POST /especialidades or /especialidades.json
  def create
    @especialidade = Especialidade.new(especialidade_params)

    respond_to do |format|
      if @especialidade.save
        format.html { redirect_to especialidade_url(@especialidade), notice: "Especialidade was successfully created." }
        format.json { render :show, status: :created, location: @especialidade }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @especialidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /especialidades/1 or /especialidades/1.json
  def update
    respond_to do |format|
      if @especialidade.update(especialidade_params)
        format.html { redirect_to especialidade_url(@especialidade), notice: "Especialidade was successfully updated." }
        format.json { render :show, status: :ok, location: @especialidade }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @especialidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especialidades/1 or /especialidades/1.json
  def destroy
    @especialidade.destroy

    respond_to do |format|
      format.html { redirect_to especialidades_url, notice: "Especialidade was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_especialidade
      @especialidade = Especialidade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def especialidade_params
      params.require(:especialidade).permit(:poder, :tipo)
    end
end

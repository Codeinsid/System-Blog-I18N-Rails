class CdzsController < ApplicationController
  before_action :set_cdz, only: [ :show, :edit, :update, :destroy ]
  before_action :set_especialidade_options, only: [:new, :create, :edit, :update]

  # GET /cdzs or /cdzs.json
  def index
    @cdzs = Cdz.all
  end

  # GET /cdzs/1 or /cdzs/1.json
  def show
  end

  # GET /cdzs/new
  def new
    @cdz = Cdz.new
  end

  # GET /cdzs/1/edit
  def edit
  end

  # POST /cdzs or /cdzs.json
  def create
    @cdz = Cdz.new(cdz_params)

    respond_to do |format|
      if @cdz.save
        format.html { redirect_to cdz_url(@cdz), notice: "Cdz was successfully created." }
        format.json { render :show, status: :created, location: @cdz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cdz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cdzs/1 or /cdzs/1.json
  def update
    respond_to do |format|
      if @cdz.update(cdz_params)
        format.html { redirect_to cdz_url(@cdz), notice: "Cdz was successfully updated." }
        format.json { render :show, status: :ok, location: @cdz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cdz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdzs/1 or /cdzs/1.json
  def destroy
    @cdz.destroy

    respond_to do |format|
      format.html { redirect_to cdzs_url, notice: "Cdz was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_especialidade_options
      @especialidade_options = Especialidade.all.pluck(:tipo, :id)
    end
      
  
  
    # Use callbacks to share common setup or constraints between actions.
    def set_cdz
      @cdz = Cdz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cdz_params
      params.require(:cdz).permit(:nome, :costelação, :idade, :foto, :especialidade_id)
    end
end

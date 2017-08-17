class ConstelacionsController < ApplicationController
  before_action :set_constelacion, only: [:show, :edit, :update, :destroy]

  # GET /constelacions
  # GET /constelacions.json
  def index
    @constelacions = Constelacion.all
  end

  # GET /constelacions/1
  # GET /constelacions/1.json
  def show
  end

  # GET /constelacions/new
  def new
    @constelacion = Constelacion.new
  end

  # GET /constelacions/1/edit
  def edit
  end

  # POST /constelacions
  # POST /constelacions.json
  def create
    @constelacion = Constelacion.new(constelacion_params)

    respond_to do |format|
      if @constelacion.save
        format.html { redirect_to @constelacion, notice: 'Constelacion was successfully created.' }
        format.json { render :show, status: :created, location: @constelacion }
      else
        format.html { render :new }
        format.json { render json: @constelacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /constelacions/1
  # PATCH/PUT /constelacions/1.json
  def update
    respond_to do |format|
      if @constelacion.update(constelacion_params)
        format.html { redirect_to @constelacion, notice: 'Constelacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @constelacion }
      else
        format.html { render :edit }
        format.json { render json: @constelacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /constelacions/1
  # DELETE /constelacions/1.json
  def destroy
    @constelacion.destroy
    respond_to do |format|
      format.html { redirect_to constelacions_url, notice: 'Constelacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_constelacion
      @constelacion = Constelacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def constelacion_params
      params.require(:constelacion).permit(:Nombre, :CoordenadaA, :CoordenadaB, :Estado)
    end
end

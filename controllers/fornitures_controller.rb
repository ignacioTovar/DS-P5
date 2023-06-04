class FornituresController < ApplicationController
  before_action :set_forniture, only: %i[ show edit update destroy ]

  # GET /fornitures or /fornitures.json
  def index
    @fornitures = Forniture.all
  end

  # GET /fornitures/1 or /fornitures/1.json
  def show
  end

  # GET /fornitures/new
  def new
    @forniture = Forniture.new
  end

  # GET /fornitures/1/edit
  def edit
  end

  # POST /fornitures or /fornitures.json
  def create
    @forniture = Forniture.new(forniture_params)

    respond_to do |format|
      if @forniture.save
        format.html { redirect_to forniture_url(@forniture), notice: "Forniture was successfully created." }
        format.json { render :show, status: :created, location: @forniture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @forniture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fornitures/1 or /fornitures/1.json
  def update
    respond_to do |format|
      if @forniture.update(forniture_params)
        format.html { redirect_to forniture_url(@forniture), notice: "Forniture was successfully updated." }
        format.json { render :show, status: :ok, location: @forniture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @forniture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fornitures/1 or /fornitures/1.json
  def destroy
    @forniture.destroy

    respond_to do |format|
      format.html { redirect_to fornitures_url, notice: "Forniture was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forniture
      @forniture = Forniture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def forniture_params
      params.require(:forniture).permit(:nombre, :tipo, :material, :cantidad)
    end
end

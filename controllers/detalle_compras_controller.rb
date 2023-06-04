class DetalleComprasController < ApplicationController
  before_action :set_detalle_compra, only: %i[ show edit update destroy ]

  # GET /detalle_compras or /detalle_compras.json
  def index
    @detalle_compras = DetalleCompra.all
  end

  # GET /detalle_compras/1 or /detalle_compras/1.json
  def show
  end

  # GET /detalle_compras/new
  def new
    @detalle_compra = DetalleCompra.new
  end

  # GET /detalle_compras/1/edit
  def edit
  end

  # POST /detalle_compras or /detalle_compras.json
  def create
    @detalle_compra = DetalleCompra.new(detalle_compra_params)

    respond_to do |format|
      if @detalle_compra.save
        format.html { redirect_to detalle_compra_url(@detalle_compra), notice: "Detalle compra was successfully created." }
        format.json { render :show, status: :created, location: @detalle_compra }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @detalle_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalle_compras/1 or /detalle_compras/1.json
  def update
    respond_to do |format|
      if @detalle_compra.update(detalle_compra_params)
        format.html { redirect_to detalle_compra_url(@detalle_compra), notice: "Detalle compra was successfully updated." }
        format.json { render :show, status: :ok, location: @detalle_compra }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @detalle_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalle_compras/1 or /detalle_compras/1.json
  def destroy
    @detalle_compra.destroy

    respond_to do |format|
      format.html { redirect_to detalle_compras_url, notice: "Detalle compra was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle_compra
      @detalle_compra = DetalleCompra.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def detalle_compra_params
      params.require(:detalle_compra).permit(:compra_id, :forniture_id, :cantidad)
    end
end

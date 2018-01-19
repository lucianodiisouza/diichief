class BebidasController < ApplicationController
  before_action :set_bebida, only: [:show, :edit, :update, :destroy]

  # GET /bebidas
  # GET /bebidas.json
  def index
    @bebidas = Bebida.all
  end

  # GET /bebidas/1
  # GET /bebidas/1.json
  def show
  end

  # GET /bebidas/new
  def new
    @bebida = Bebida.new
  end

  # GET /bebidas/1/edit
  def edit
  end

  # POST /bebidas
  # POST /bebidas.json
  def create
    @bebida = Bebida.new(bebida_params)

    respond_to do |format|
      if @bebida.save
        format.html { redirect_to @bebida, notice: 'Bebida was successfully created.' }
        format.json { render :show, status: :created, location: @bebida }
      else
        format.html { render :new }
        format.json { render json: @bebida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bebidas/1
  # PATCH/PUT /bebidas/1.json
  def update
    respond_to do |format|
      if @bebida.update(bebida_params)
        format.html { redirect_to @bebida, notice: 'Bebida was successfully updated.' }
        format.json { render :show, status: :ok, location: @bebida }
      else
        format.html { render :edit }
        format.json { render json: @bebida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bebidas/1
  # DELETE /bebidas/1.json
  def destroy
    @bebida.destroy
    respond_to do |format|
      format.html { redirect_to bebidas_url, notice: 'Bebida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bebida
      @bebida = Bebida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bebida_params
      params.require(:bebida).permit(:nome, :tamanho, :preco)
    end
end

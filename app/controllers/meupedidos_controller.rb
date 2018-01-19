class MeupedidosController < ApplicationController
  before_action :set_meupedido, only: [:show, :edit, :update, :destroy]
  # GET /meupedidos
  # GET /meupedidos.json
  def index
    @meupedidos = Meupedido.where(:user_id => current_user)
  end

  # GET /meupedidos/1
  # GET /meupedidos/1.json
  def show
   
  end

  # GET /meupedidos/new
  def new
    @meupedido = Meupedido.new :user_id => current_user.id
  end

  # GET /meupedidos/1/edit
  def edit
  end

  # POST /meupedidos
  # POST /meupedidos.json
  
  def create
    @meupedido = Meupedido.new(meupedido_params)

    respond_to do |format|
      if @meupedido.save
        format.html { redirect_to @meupedido, notice: 'Meupedido was successfully created.' }
        format.json { render :show, status: :created, location: @meupedido }
      else
        format.html { render :new }
        format.json { render json: @meupedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meupedidos/1
  # PATCH/PUT /meupedidos/1.json
  def update
    respond_to do |format|
      if @meupedido.update(meupedido_params)
        format.html { redirect_to @meupedido, notice: 'Meupedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @meupedido }
      else
        format.html { render :edit }
        format.json { render json: @meupedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meupedidos/1
  # DELETE /meupedidos/1.json
  def destroy
    @meupedido.destroy
    respond_to do |format|
      format.html { redirect_to meupedidos_url, notice: 'Meupedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meupedido
      @meupedido = Meupedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meupedido_params
      params.require(:meupedido).permit(:user_id, :obs, :status, :total, :descricao)
    end
end

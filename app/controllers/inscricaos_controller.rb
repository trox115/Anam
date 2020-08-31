class InscricaosController < ApplicationController
  before_action :set_inscricao, only: [:show, :edit, :update, :destroy]

  # GET /inscricaos
  # GET /inscricaos.json
  def index
    @inscricaos = Inscricao.order(:id)
  end

  def email
    @inscricaos = Inscricao.order(:id)
  end

  # GET /inscricaos/1
  # GET /inscricaos/1.json
  def show
  end

  # GET /inscricaos/new
  def new
    @inscricao = Inscricao.new
  end

  # GET /inscricaos/1/edit
  def edit
  end

  # POST /inscricaos
  # POST /inscricaos.json
  def create
    @inscricao = Inscricao.new(inscricao_params)
    
    respond_to do |format|
      if @inscricao.save
        InscricaoMailer.confirmacao_inscricao(@inscricao).deliver
        format.html { redirect_to @inscricao, notice: 'A sua inscrição foi submetida com sucesso irá receber um link para pagamento em menos de 24 horas' }
        format.json { render :show, status: :created, location: @inscricao }
      else
        format.html { render :new }
        format.json { render json: @inscricao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inscricaos/1
  # PATCH/PUT /inscricaos/1.json
  def update
    respond_to do |format|
      if @inscricao.update(inscricao_params)
        format.html { redirect_to @inscricao, notice: 'Inscrição Validada.' }
        format.json { render :show, status: :ok, location: @inscricao }
      else
        format.html { render :edit }
        format.json { render json: @inscricao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inscricaos/1
  # DELETE /inscricaos/1.json
  def destroy
    @inscricao.destroy
    respond_to do |format|
      format.html { redirect_to inscricaos_url, notice: 'Inscricao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inscricao
      @inscricao = Inscricao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inscricao_params
      params.require(:inscricao).permit(:nome, :telefone, :email, :tipo, :categoria, :municipio, :image)
    end
end

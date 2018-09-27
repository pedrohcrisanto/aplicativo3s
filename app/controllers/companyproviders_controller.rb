class CompanyprovidersController < ApplicationController
  before_action :set_companyprovider, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /companyproviders
  # GET /companyproviders.json
  def index
    @companyproviders = Companyprovider.all
  end

  # GET /companyproviders/1
  # GET /companyproviders/1.json
  def show
  end

  # GET /companyproviders/new
  def new
    @companyprovider = Companyprovider.new
  end

  # GET /companyproviders/1/edit
  def edit
  end

  # POST /companyproviders
  # POST /companyproviders.json
  def create
    @companyprovider = Companyprovider.new(companyprovider_params)

    respond_to do |format|
      if @companyprovider.save
        format.html { redirect_to @companyprovider, notice: 'Companyprovider was successfully created.' }
        format.json { render :show, status: :created, location: @companyprovider }
      else
        format.html { render :new }
        format.json { render json: @companyprovider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companyproviders/1
  # PATCH/PUT /companyproviders/1.json
  def update
    respond_to do |format|
      if @companyprovider.update(companyprovider_params)
        format.html { redirect_to @companyprovider, notice: 'Companyprovider was successfully updated.' }
        format.json { render :show, status: :ok, location: @companyprovider }
      else
        format.html { render :edit }
        format.json { render json: @companyprovider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companyproviders/1
  # DELETE /companyproviders/1.json
  def destroy
    @companyprovider.destroy
    respond_to do |format|
      format.html { redirect_to companyproviders_url, notice: 'Companyprovider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companyprovider
      @companyprovider = Companyprovider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def companyprovider_params
      params.require(:companyprovider).permit(:nome, :cnpj, :codigo_contabil_cliente, :codigo_contabil_fornecedor, :user_id)
    end
end

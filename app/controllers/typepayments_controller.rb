class TypepaymentsController < ApplicationController
  before_action :set_typepayment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /typepayments
  # GET /typepayments.json
  def index
    @typepayments = Typepayment.all
  end

  # GET /typepayments/1
  # GET /typepayments/1.json
  def show
  end

  # GET /typepayments/new
  def new
    @typepayment = Typepayment.new
  end

  # GET /typepayments/1/edit
  def edit
  end

  # POST /typepayments
  # POST /typepayments.json
  def create
    @typepayment = Typepayment.new(typepayment_params)

    respond_to do |format|
      if @typepayment.save
        format.html { redirect_to @typepayment, notice: 'Typepayment was successfully created.' }
        format.json { render :show, status: :created, location: @typepayment }
      else
        format.html { render :new }
        format.json { render json: @typepayment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typepayments/1
  # PATCH/PUT /typepayments/1.json
  def update
    respond_to do |format|
      if @typepayment.update(typepayment_params)
        format.html { redirect_to @typepayment, notice: 'Typepayment was successfully updated.' }
        format.json { render :show, status: :ok, location: @typepayment }
      else
        format.html { render :edit }
        format.json { render json: @typepayment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typepayments/1
  # DELETE /typepayments/1.json
  def destroy
    @typepayment.destroy
    respond_to do |format|
      format.html { redirect_to typepayments_url, notice: 'Typepayment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typepayment
      @typepayment = Typepayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typepayment_params
      params.require(:typepayment).permit(:nome, :descricao, :user_id)
    end
end

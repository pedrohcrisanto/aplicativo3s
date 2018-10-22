class AccountbanksController < ApplicationController
  before_action :set_accountbank, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /accountbanks
  # GET /accountbanks.json
  def index
    @accountbanks = Accountbank.where(user_id: current_user.id)
  end

  # GET /accountbanks/1
  # GET /accountbanks/1.json
  def show
  end

  # GET /accountbanks/new
  def new
    @accountbank = Accountbank.new
  end

  # GET /accountbanks/1/edit
  def edit
  end

  # POST /accountbanks
  # POST /accountbanks.json
  def create
    @accountbank = Accountbank.new(accountbank_params.merge(user: current_user))

    respond_to do |format|
      if @accountbank.save
        format.html { redirect_to @accountbank, notice: 'Accountbank was successfully created.' }
        format.json { render :show, status: :created, location: @accountbank }
      else
        format.html { render :new }
        format.json { render json: @accountbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accountbanks/1
  # PATCH/PUT /accountbanks/1.json
  def update
    respond_to do |format|
      if @accountbank.update(accountbank_params)
        format.html { redirect_to @accountbank, notice: 'Accountbank was successfully updated.' }
        format.json { render :show, status: :ok, location: @accountbank }
      else
        format.html { render :edit }
        format.json { render json: @accountbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accountbanks/1
  # DELETE /accountbanks/1.json
  def destroy
    @accountbank.destroy
    respond_to do |format|
      format.html { redirect_to accountbanks_url, notice: 'Accountbank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accountbank
      @accountbank = Accountbank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accountbank_params
      params.require(:accountbank).permit(:nome, :banco, :agencia, :conta_corrente, :codigo_contabil, :company_id, :user_id)
    end
end

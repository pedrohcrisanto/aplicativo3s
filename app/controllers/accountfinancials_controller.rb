class AccountfinancialsController < ApplicationController
  before_action :set_accountfinancial, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /accountfinancials
  # GET /accountfinancials.json
  def index
    @accountfinancials = Accountfinancial.where(user_id: current_user.id)
  end

  # GET /accountfinancials/1
  # GET /accountfinancials/1.json
  def show
  end

  # GET /accountfinancials/new
  def new
    @accountfinancial = Accountfinancial.new
  end

  # GET /accountfinancials/1/edit
  def edit
  end

  # POST /accountfinancials
  # POST /accountfinancials.json
  def create
    @accountfinancial = Accountfinancial.new(accountfinancial_params.merge(user: current_user))

    respond_to do |format|
      if @accountfinancial.save
        format.html { redirect_to @accountfinancial, notice: 'Accountfinancial was successfully created.' }
        format.json { render :show, status: :created, location: @accountfinancial }
      else
        format.html { render :new }
        format.json { render json: @accountfinancial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accountfinancials/1
  # PATCH/PUT /accountfinancials/1.json
  def update
    respond_to do |format|
      if @accountfinancial.update(accountfinancial_params)
        format.html { redirect_to @accountfinancial, notice: 'Accountfinancial was successfully updated.' }
        format.json { render :show, status: :ok, location: @accountfinancial }
      else
        format.html { render :edit }
        format.json { render json: @accountfinancial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accountfinancials/1
  # DELETE /accountfinancials/1.json
  def destroy
    @accountfinancial.destroy
    respond_to do |format|
      format.html { redirect_to accountfinancials_url, notice: 'Accountfinancial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accountfinancial
      @accountfinancial = Accountfinancial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accountfinancial_params
      params.require(:accountfinancial).permit(:nome, :natureza, :historico, :codigo_contabil, :companyprovider_id, :user_id)
    end
end

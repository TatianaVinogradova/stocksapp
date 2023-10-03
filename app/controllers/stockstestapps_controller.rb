class StockstestappsController < ApplicationController
  before_action :set_stockstestapp, only: %i[ show edit update destroy ]

  # GET /stockstestapps or /stockstestapps.json
  def index
    @stockstestapps = Stockstestapp.all
  end

  # GET /stockstestapps/1 or /stockstestapps/1.json
  def show
  end

  # GET /stockstestapps/new
  def new
    @stockstestapp = Stockstestapp.new
  end

  # GET /stockstestapps/1/edit
  def edit
  end

  # POST /stockstestapps or /stockstestapps.json
  def create
    @stockstestapp = Stockstestapp.new(stockstestapp_params)

    respond_to do |format|
      if @stockstestapp.save
        format.html { redirect_to stockstestapp_url(@stockstestapp), notice: "Stockstestapp was successfully created." }
        format.json { render :show, status: :created, location: @stockstestapp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stockstestapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stockstestapps/1 or /stockstestapps/1.json
  def update
    respond_to do |format|
      if @stockstestapp.update(stockstestapp_params)
        format.html { redirect_to stockstestapp_url(@stockstestapp), notice: "Stockstestapp was successfully updated." }
        format.json { render :show, status: :ok, location: @stockstestapp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stockstestapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stockstestapps/1 or /stockstestapps/1.json
  def destroy
    @stockstestapp.destroy

    respond_to do |format|
      format.html { redirect_to stockstestapps_url, notice: "Stockstestapp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stockstestapp
      @stockstestapp = Stockstestapp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stockstestapp_params
      params.require(:stockstestapp).permit(:funds_name, :stockname, :date, :price)
    end
end

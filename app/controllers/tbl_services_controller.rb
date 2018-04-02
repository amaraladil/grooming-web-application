class TblServicesController < ApplicationController
	before_action :set_tblservice, only: [:show, :edit, :update, :destroy]

  # GET /tblservices
  # GET /tblservices.json
  def index
    @tblservices = TblService.all
  end

  # GET /tblservices/1
  # GET /tblservices/1.json
  def show
  end

  # GET /tblservices/new
  def new
    @tblservice = TblService.new
  end

  # GET /tblservices/1/edit
  def edit
  end

  # POST /tblservices
  # POST /tblservices.json
  def create
    @tblservice = TblService.new(tblservice_params)

    respond_to do |format|
      if @tblservice.save
        format.html { redirect_to @tblservice, notice: 'Tblservice was successfully created.' }
        format.json { render :show, status: :created, location: @tblservice }
      else
        format.html { render :new }
        format.json { render json: @tblservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tblservices/1
  # PATCH/PUT /tblservices/1.json
  def update
    respond_to do |format|
      if @tblservice.update(tblservice_params)
        format.html { redirect_to @tblservice, notice: 'Tblservice was successfully updated.' }
        format.json { render :show, status: :ok, location: @tblservice }
      else
        format.html { render :edit }
        format.json { render json: @tblservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tblservices/1
  # DELETE /tblservices/1.json
  def destroy
    @tblservice.destroy
    respond_to do |format|
      format.html { redirect_to tblservices_url, notice: 'Tblservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tblservice
      @tblservice = TblService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tblservice_params
      params.require(:tbl_service).permit( :serviceName, :price)
    end
end

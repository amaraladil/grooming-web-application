class TblstaffsController < ApplicationController
  before_action :set_tblstaff, only: [:show, :edit, :update, :destroy]

  # GET /tblstaffs
  # GET /tblstaffs.json
  def index
    @tblstaffs = Tblstaff.all
  end

  # GET /tblstaffs/1
  # GET /tblstaffs/1.json
  def show
  end

  # GET /tblstaffs/new
  def new
    @tblstaff = Tblstaff.new
  end

  # GET /tblstaffs/1/edit
  def edit
  end

  # POST /tblstaffs
  # POST /tblstaffs.json
  def create
    @tblstaff = Tblstaff.new(tblstaff_params)

    respond_to do |format|
      if @tblstaff.save
        format.html { redirect_to @tblstaff, notice: 'Tblstaff was successfully created.' }
        format.json { render :show, status: :created, location: @tblstaff }
      else
        format.html { render :new }
        format.json { render json: @tblstaff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tblstaffs/1
  # PATCH/PUT /tblstaffs/1.json
  def update
    respond_to do |format|
      if @tblstaff.update(tblstaff_params)
        format.html { redirect_to @tblstaff, notice: 'Tblstaff was successfully updated.' }
        format.json { render :show, status: :ok, location: @tblstaff }
      else
        format.html { render :edit }
        format.json { render json: @tblstaff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tblstaffs/1
  # DELETE /tblstaffs/1.json
  def destroy
    @tblstaff.destroy
    respond_to do |format|
      format.html { redirect_to tblstaffs_url, notice: 'Tblstaff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tblstaff
      @tblstaff = Tblstaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tblstaff_params
      params.require(:tblstaff).permit(:staffID, :firstName, :lastName, :password, :phoneNumber, :email, :address, :postalCode)
    end
end

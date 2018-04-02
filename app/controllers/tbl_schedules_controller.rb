class TblSchedulesController < ApplicationController
	before_action :set_tblschedule, only: [:show, :edit, :update, :destroy]

  # GET /tblbookings
  # GET /tblbookings.json
  def index
    @tblschedules = TblSchedule.all
       
  end

  # GET /tblbookings/1
  # GET /tblbookings/1.json
  def show
    @tblschedule = TblSchedule.find(params[:id])
    
    if !@tblschedule.tbl_users_id.nil?
      @staff = TblUser.find(@tblschedule.tbl_users_id)
    end
  end

  # GET /tblbookings/new
  def new
    @tblschedule = TblSchedule.new
  end

  # GET /tblbookings/1/edit
  def edit
  end

  # POST /tblbookings
  # POST /tblbookings.json
  def create
    @tblschedule = TblSchedule.new(tblschedule_params)

    respond_to do |format|
      if @tblschedule.save
        format.html { redirect_to @tblschedule, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @tblschedule }
      else
        format.html { render :new }
        format.json { render json: @tblschedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tblbookings/1
  # PATCH/PUT /tblbookings/1.json
  def update
    respond_to do |format|
      if @tblschedule.update(tblschedule_params)
        format.html { redirect_to @tblschedule, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @tblschedule }
      else
        format.html { render :edit }
        format.json { render json: @tblschedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tblbookings/1
  # DELETE /tblbookings/1.json
  def destroy
    @tblschedule.destroy
    respond_to do |format|
      format.html { redirect_to tbl_schedules_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tblschedule
      @tblschedule = TblSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tblschedule_params
      params.require(:tbl_schedule).permit(:dateTime, :isTaken, :tbl_users_id, :tbl_dogs_id, :tbl_services_id)
    end
end

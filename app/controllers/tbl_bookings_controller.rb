class TblBookingsController < ApplicationController
	before_action :set_tblbooking, only: [:show, :edit, :update, :destroy]

  # GET /tblbookings
  # GET /tblbookings.json
  def index
    @tblbookings = TblBooking.all
       
  end

  # GET /tblbookings/1
  # GET /tblbookings/1.json
  def show
    @booking = TblBooking.find(params[:id])
    if !@booking.tbl_dogs_id.nil?
      @dog = TblDog.find(@booking.tbl_dogs_id)
    end

    if !@booking.tbl_users_id.nil?
      @staff = TblUser.find(@booking.tbl_users_id)
    end

    if !@booking.tbl_services_id.nil?
      @service = TblService.find(@booking.tbl_services_id)
    end

    @schedules = TblSchedule.where(dateTime: @booking.dateTime).first
  end

  # GET /tblbookings/new
  def new
    @tblbooking = TblBooking.new
  end

  # GET /tblbookings/1/edit
  def edit
  end

  # POST /tblbookings
  # POST /tblbookings.json
  def create
    @tblbooking = TblBooking.new(tblbooking_params)

    respond_to do |format|
      if @tblbooking.save
        @schedule = TblSchedule.find(@tblbooking.tbl_schedules_id)
        @schedule.isTaken = true
        @schedule.save
        
        @tblbooking.dateTime = @schedule.dateTime
        @tblbooking.tbl_users_id = @schedule.tbl_users_id
        @tblbooking.save

        format.html { redirect_to @tblbooking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @tblbooking }
      else
        format.html { render :new }
        format.json { render json: @tblbooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tblbookings/1
  # PATCH/PUT /tblbookings/1.json
  def update
    respond_to do |format|
      logger.debug "The object is #{@tblbooking.tbl_schedules_id}"
      if !@tblbooking.tbl_schedules_id.nil?
        @oldschedule = TblSchedule.find(@tblbooking.tbl_schedules_id)
      end

      if @tblbooking.update(tblbooking_params)

        logger.debug "After is #{@tblbooking.tbl_schedules_id}"
        if !@oldschedule.nil?
          @oldschedule.isTaken = false
          @oldschedule.save
        end

        @schedule = TblSchedule.find(@tblbooking.tbl_schedules_id)
        @schedule.isTaken = true
        @schedule.save

        @tblbooking.dateTime = @schedule.dateTime
        @tblbooking.tbl_users_id = @schedule.tbl_users_id
        @tblbooking.save

        format.html { redirect_to @tblbooking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @tblbooking }
      else
        format.html { render :edit }
        format.json { render json: @tblbooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tblbookings/1
  # DELETE /tblbookings/1.json
  def destroy
    @tblbooking.destroy
    respond_to do |format|
      format.html { redirect_to tbl_bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tblbooking
      @tblbooking = TblBooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tblbooking_params
      params.require(:tbl_booking).permit(:dateTime, :isPaid, :tbl_users_id, :tbl_dogs_id, :tbl_services_id, :tbl_schedules_id)
    end

end

class TblBookingsController < ApplicationController
	before_action :set_tblbooking, only: [:show, :edit, :update, :destroy]

  # GET /tblbookings
  # GET /tblbookings.json
  def index
    @tblbookings = TblBooking.all


    @bookingjoin = TblBooking.joins(:tbl_users, :tbldog, :tblservice, :tblstaff)
       
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
    @test = :isPaid?
    logger.debug "The TEST is #{@test}"
    respond_to do |format|
      if @tblbooking.update(tblbooking_params)
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
      format.html { redirect_to tblbookings_url, notice: 'Booking was successfully destroyed.' }
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
      params.require(:tbl_booking).permit(:dateTime, :isPaid, :tbl_users_id, :tbl_dogs_id, :tbl_services_id)
    end

end

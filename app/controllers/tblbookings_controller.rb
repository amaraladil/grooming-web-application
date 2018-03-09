class TblbookingsController < ApplicationController
  before_action :set_tblbooking, only: [:show, :edit, :update, :destroy]

  # GET /tblbookings
  # GET /tblbookings.json
  def index
    @tblbookings = Tblbooking.all


    @bookingjoin = Tblbooking.joins(:tblclient, :tbldog, :tblservice, :tblstaff)
                              #.where(:tbldogs =>{:tblclient_id => '2'})
   

     @bookingjoin.each do |b|
        
        @firstName = b.tblclient.firstName
        @dogname =  b.tbldog.dogName 
        @dogSize =  b.tbldog.dogSize
        @serviceName = b.tblservice.serviceName   
        @staffName = b.tblstaff.firstName      
        @date = b.dateTime.strftime("%d/%m/%Y %H:%M")
    
     end  

   
  end

  # GET /tblbookings/1
  # GET /tblbookings/1.json
  def show
  end

  # GET /tblbookings/new
  def new
    @tblbooking = Tblbooking.new
  end

  # GET /tblbookings/1/edit
  def edit
  end

  # POST /tblbookings
  # POST /tblbookings.json
  def create
    @tblbooking = Tblbooking.new(tblbooking_params)

    respond_to do |format|
      if @tblbooking.save
        format.html { redirect_to @tblbooking, notice: 'Tblbooking was successfully created.' }
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
      if @tblbooking.update(tblbooking_params)
        format.html { redirect_to @tblbooking, notice: 'Tblbooking was successfully updated.' }
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
      format.html { redirect_to tblbookings_url, notice: 'Tblbooking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tblbooking
      @tblbooking = Tblbooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tblbooking_params
      params.require(:tblbooking).permit(:bookingID, :dateTime, :isPaid?, :dogID, :staffID, :serviceID)
    end
end

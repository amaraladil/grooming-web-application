class TblclientsController < ApplicationController
  before_action :set_tblclient, only: [:show, :edit, :update, :destroy]

  # GET /tblclients
  # GET /tblclients.json
  def index
    @tblclients = Tblclient.all


     #@testingjoin = Tbldog.joins("INNER JOIN tblclients ON tblclients.id = tbldogs.clientID WHERE tbldogs.clientID = 2")
     #@testingjoin = Tbldog.joins(:tblclient).where(:tblclients =>{:id => '2'})
     #@testingjoin = Tbldog.all(:include => :tblclient, :conditions => {:tblclients => {:id => '2'}})
     #@testingjoin = Tbldog.includes(:tblclient).all
     @testingjoin = Tbldog.joins(:tblclient).where(:tblclients =>{:id => '2'})
  end

  # GET /tblclients/1
  # GET /tblclients/1.json
  def show


    


    #@testing = Tblclient.where(id: 2)

   
  end

  # GET /tblclients/new
  def new
    @tblclient = Tblclient.new
  end

  # GET /tblclients/1/edit
  def edit
  end

  # POST /tblclients
  # POST /tblclients.json
  def create
    @tblclient = Tblclient.new(tblclient_params)

    respond_to do |format|
      if @tblclient.save
        format.html { redirect_to @tblclient, notice: 'Tblclient was successfully created.' }
        format.json { render :show, status: :created, location: @tblclient }
      else
        format.html { render :new }
        format.json { render json: @tblclient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tblclients/1
  # PATCH/PUT /tblclients/1.json
  def update
    respond_to do |format|
      if @tblclient.update(tblclient_params)
        format.html { redirect_to @tblclient, notice: 'Tblclient was successfully updated.' }
        format.json { render :show, status: :ok, location: @tblclient }
      else
        format.html { render :edit }
        format.json { render json: @tblclient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tblclients/1
  # DELETE /tblclients/1.json
  def destroy
    @tblclient.destroy
    respond_to do |format|
      format.html { redirect_to tblclients_url, notice: 'Tblclient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tblclient
      @tblclient = Tblclient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tblclient_params
      params.require(:tblclient).permit(:clientID, :userName, :firstName, :lastName, :password, :phoneNumber, :email, :address, :postalCode)
    end
end

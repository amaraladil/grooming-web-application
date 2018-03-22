class TblDogsController < ApplicationController
	before_action :set_tbldog, only: [:show, :edit, :update, :destroy]

  	# GET /tbldogs
  	# GET /tbldogs.json
  	def index
    	@tbldogs = TblDog.all
  	end

  # GET /tbldogs/1
  # GET /tbldogs/1.json
  def show
  end

  # GET /tbldogs/new
  def new
    @tbldog = TblDog.new
  end

  # GET /tbldogs/1/edit
  def edit
  end

  # POST /tbldogs
  # POST /tbldogs.json
  def create
    @tbldog = TblDog.new(tbldog_params)

    respond_to do |format|
      if @tbldog.save
        format.html { redirect_to @tbldog, notice: 'Tbldog was successfully created.' }
        format.json { render :show, status: :created, location: @tbldog }
      else
        format.html { render :new }
        format.json { render json: @tbldog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tbldogs/1
  # PATCH/PUT /tbldogs/1.json
  def update
    respond_to do |format|
      if @tbldog.update(tbldog_params)
        format.html { redirect_to @tbldog, notice: 'Tbldog was successfully updated.' }
        format.json { render :show, status: :ok, location: @tbldog }
      else
        format.html { render :edit }
        format.json { render json: @tbldog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tbldogs/1
  # DELETE /tbldogs/1.json
  def destroy
    @tbldog.destroy
    respond_to do |format|
      format.html { redirect_to tbldogs_url, notice: 'Tbldog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbldog
      @tbldog = Tbldog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tbldog_params
      params.require(:tbl_dog).permit( :dogName, :dogType, :dogSize, :tbl_users_id)
    end

end

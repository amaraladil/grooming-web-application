class TblratingsController < ApplicationController
  before_action :set_tblrating, only: [:show, :edit, :update, :destroy]

  # GET /tblratings
  # GET /tblratings.json
  def index
    @tblratings = Tblrating.all
  end

  # GET /tblratings/1
  # GET /tblratings/1.json
  def show
  end

  # GET /tblratings/new
  def new
    @tblrating = Tblrating.new
  end

  # GET /tblratings/1/edit
  def edit
  end

  # POST /tblratings
  # POST /tblratings.json
  def create
    @tblrating = Tblrating.new(tblrating_params)

    respond_to do |format|
      if @tblrating.save
        format.html { redirect_to @tblrating, notice: 'Tblrating was successfully created.' }
        format.json { render :show, status: :created, location: @tblrating }
      else
        format.html { render :new }
        format.json { render json: @tblrating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tblratings/1
  # PATCH/PUT /tblratings/1.json
  def update
    respond_to do |format|
      if @tblrating.update(tblrating_params)
        format.html { redirect_to @tblrating, notice: 'Tblrating was successfully updated.' }
        format.json { render :show, status: :ok, location: @tblrating }
      else
        format.html { render :edit }
        format.json { render json: @tblrating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tblratings/1
  # DELETE /tblratings/1.json
  def destroy
    @tblrating.destroy
    respond_to do |format|
      format.html { redirect_to tblratings_url, notice: 'Tblrating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tblrating
      @tblrating = Tblrating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tblrating_params
      params.require(:tblrating).permit(:ratingID, :rating, :comment, :clientID)
    end
end

class TblRatingsController < ApplicationController
	before_action :set_tblrating, only: [:show, :edit, :update, :destroy]

  # GET /tblratings
  # GET /tblratings.json
  def index
    @tblratings = TblRating.all.order(created_at: :desc)
    @tblrating = TblRating.new
    @reviews = TblRating.paginate(page: params[:page])
  end

  # GET /tblratings/1
  # GET /tblratings/1.json
  def show
  end

  # GET /tblratings/new
  def new
    @tblrating = TblRating.new
  end

  # GET /tblratings/1/edit
  def edit
  end

  # POST /tblratings
  # POST /tblratings.json
  def create
    @tblrating = TblRating.new(tblrating_params)
    @tblrating.tbl_users_id = current_user.id
    logger.debug params.inspect
    logger.debug params[:star].inspect
    @star = params[:star]
    logger.debug @star
    @tblrating.rating = @star

   
      if @tblrating.save
        redirect_to reviews_path
      else
        format.html { render :new }
        format.json { render json: @tblrating.errors, status: :unprocessable_entity }
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
      format.html { redirect_to reviews_path, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tblrating
      @tblrating = TblRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tblrating_params
      params.require(:tbl_rating).permit( :rating, :comment, :tbl_users_id)
    end
end

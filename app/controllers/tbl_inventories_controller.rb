class TblInventoriesController < ApplicationController
	before_action :set_tblinventory, only: [:show, :edit, :update, :destroy]

  # GET /tblinventories
  # GET /tblinventories.json
  def index
    @tblinventories = TblInventory.all
  end

  # GET /tblinventories/1
  # GET /tblinventories/1.json
  def show
  end

  # GET /tblinventories/new
  def new
    @tblinventory = TblInventory.new
  end

  # GET /tblinventories/1/edit
  def edit
  end

  # POST /tblinventories
  # POST /tblinventories.json
  def create
    @tblinventory = TblInventory.new(tblinventory_params)

    respond_to do |format|
      if @tblinventory.save
        format.html { redirect_to @tblinventory, notice: 'Inventory item was successfully created.' }
        format.json { render :show, status: :created, location: @tblinventory }
      else
        format.html { render :new }
        format.json { render json: @tblinventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tblinventories/1
  # PATCH/PUT /tblinventories/1.json
  def update
    respond_to do |format|
      if @tblinventory.update(tblinventory_params)
        format.html { redirect_to @tblinventory, notice: ' was successfully updated.' }
        format.json { render :show, status: :ok, location: @tblinventory }
      else
        format.html { render :edit }
        format.json { render json: @tblinventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tblinventories/1
  # DELETE /tblinventories/1.json
  def destroy
    @tblinventory.destroy
    respond_to do |format|
      format.html { redirect_to tbl_inventories_url, notice: 'Inventory item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tblinventory
      @tblinventory = TblInventory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tblinventory_params
      params.require(:tbl_inventory).permit(:name, :price, :quantity)
    end
end

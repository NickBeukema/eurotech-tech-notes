class RepairItemsController < ApplicationController
  before_action :set_repair_item, only: [:show, :edit, :update, :destroy]

  # GET /repair_items
  # GET /repair_items.json
  def index
    @repair_items = RepairItem.all
  end

  # GET /repair_items/1
  # GET /repair_items/1.json
  def show
  end

  # GET /repair_items/new
  def new
    @repair_item = RepairItem.new
  end

  # GET /repair_items/1/edit
  def edit
  end

  # POST /repair_items
  # POST /repair_items.json
  def create
    @repair_item = RepairItem.new(repair_item_params)

    respond_to do |format|
      if @repair_item.save
        format.html { redirect_to @repair_item, notice: 'Repair item was successfully created.' }
        format.json { render :show, status: :created, location: @repair_item }
      else
        format.html { render :new }
        format.json { render json: @repair_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repair_items/1
  # PATCH/PUT /repair_items/1.json
  def update
    respond_to do |format|
      if @repair_item.update(repair_item_params)
        format.html { redirect_to @repair_item, notice: 'Repair item was successfully updated.' }
        format.json { render :show, status: :ok, location: @repair_item }
      else
        format.html { render :edit }
        format.json { render json: @repair_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repair_items/1
  # DELETE /repair_items/1.json
  def destroy
    @repair_item.destroy
    respond_to do |format|
      format.html { redirect_to repair_items_url, notice: 'Repair item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repair_item
      @repair_item = RepairItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repair_item_params
      params.require(:repair_item).permit(:cause, :correction, :parts)
    end
end

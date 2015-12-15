class RepairOrderDetailsController < ApplicationController
  before_action :set_repair_order_detail, only: [:show, :edit, :update, :destroy]

  # GET /repair_order_details
  # GET /repair_order_details.json
  def index
    @repair_order_details = RepairOrderDetail.all
  end

  # GET /repair_order_details/1
  # GET /repair_order_details/1.json
  def show
  end

  # GET /repair_order_details/new
  def new
    @repair_order_detail = RepairOrderDetail.new
  end

  # GET /repair_order_details/1/edit
  def edit
  end

  # POST /repair_order_details
  # POST /repair_order_details.json
  def create
    @repair_order_detail = RepairOrderDetail.new(repair_order_detail_params)

    respond_to do |format|
      if @repair_order_detail.save
        format.html { redirect_to @repair_order_detail, notice: 'Repair order detail was successfully created.' }
        format.json { render :show, status: :created, location: @repair_order_detail }
      else
        format.html { render :new }
        format.json { render json: @repair_order_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repair_order_details/1
  # PATCH/PUT /repair_order_details/1.json
  def update
    respond_to do |format|
      if @repair_order_detail.update(repair_order_detail_params)
        format.html { redirect_to @repair_order_detail, notice: 'Repair order detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @repair_order_detail }
      else
        format.html { render :edit }
        format.json { render json: @repair_order_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repair_order_details/1
  # DELETE /repair_order_details/1.json
  def destroy
    @repair_order_detail.destroy
    respond_to do |format|
      format.html { redirect_to repair_order_details_url, notice: 'Repair order detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repair_order_detail
      @repair_order_detail = RepairOrderDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repair_order_detail_params
      params.require(:repair_order_detail).permit(:cause, :correction, :parts)
    end
end

class RepairDetailsController < ApplicationController
  before_action :set_repair_detail, only: [:show, :edit, :update, :destroy]

  # GET /repair_details
  # GET /repair_details.json
  def index
    @repair_details = RepairDetail.all
  end

  # GET /repair_details/1
  # GET /repair_details/1.json
  def show
  end

  # GET /repair_details/new
  def new
    @repair_detail = RepairDetail.new
  end

  # GET /repair_details/1/edit
  def edit
  end

  # POST /repair_details
  # POST /repair_details.json
  def create
    @repair_detail = RepairDetail.new(repair_detail_params)

    respond_to do |format|
      if @repair_detail.save
        format.html { redirect_to @repair_detail, notice: 'Repair detail was successfully created.' }
        format.json { render :show, status: :created, location: @repair_detail }
      else
        format.html { render :new }
        format.json { render json: @repair_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repair_details/1
  # PATCH/PUT /repair_details/1.json
  def update
    respond_to do |format|
      if @repair_detail.update(repair_detail_params)
        format.html { redirect_to @repair_detail, notice: 'Repair detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @repair_detail }
      else
        format.html { render :edit }
        format.json { render json: @repair_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repair_details/1
  # DELETE /repair_details/1.json
  def destroy
    @repair_detail.destroy
    respond_to do |format|
      format.html { redirect_to repair_details_url, notice: 'Repair detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repair_detail
      @repair_detail = RepairDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repair_detail_params
      params.require(:repair_detail).permit(:repair_order, :recommendations, :maintenance)
    end
end

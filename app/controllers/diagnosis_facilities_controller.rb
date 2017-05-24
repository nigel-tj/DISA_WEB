class DiagnosisFacilitiesController < ApplicationController
  before_action :set_diagnosis_facility, only: [:show, :edit, :update, :destroy]

  # GET /diagnosis_facilities
  # GET /diagnosis_facilities.json
  def index
    @diagnosis_facilities = DiagnosisFacility.all
  end

  # GET /diagnosis_facilities/1
  # GET /diagnosis_facilities/1.json
  def show
  end

  # GET /diagnosis_facilities/new
  def new
    @diagnosis_facility = DiagnosisFacility.new
  end

  # GET /diagnosis_facilities/1/edit
  def edit
  end

  # POST /diagnosis_facilities
  # POST /diagnosis_facilities.json
  def create
    @diagnosis_facility = DiagnosisFacility.new(diagnosis_facility_params)

    respond_to do |format|
      if @diagnosis_facility.save
        format.html { redirect_to @diagnosis_facility, notice: 'Diagnosis facility was successfully created.' }
        format.json { render :show, status: :created, location: @diagnosis_facility }
      else
        format.html { render :new }
        format.json { render json: @diagnosis_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diagnosis_facilities/1
  # PATCH/PUT /diagnosis_facilities/1.json
  def update
    respond_to do |format|
      if @diagnosis_facility.update(diagnosis_facility_params)
        format.html { redirect_to @diagnosis_facility, notice: 'Diagnosis facility was successfully updated.' }
        format.json { render :show, status: :ok, location: @diagnosis_facility }
      else
        format.html { render :edit }
        format.json { render json: @diagnosis_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnosis_facilities/1
  # DELETE /diagnosis_facilities/1.json
  def destroy
    @diagnosis_facility.destroy
    respond_to do |format|
      format.html { redirect_to diagnosis_facilities_url, notice: 'Diagnosis facility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diagnosis_facility
      @diagnosis_facility = DiagnosisFacility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diagnosis_facility_params
      params.require(:diagnosis_facility).permit(:diagnosis_facility_id, :location_id, :name)
    end
end

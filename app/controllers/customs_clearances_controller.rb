class CustomsClearancesController < ApplicationController
  before_action :set_customs_clearance, only: %i[ show edit update destroy ]

  # GET /customs_clearances or /customs_clearances.json
  def index
    @customs_clearances = CustomsClearance.all
  end

  # GET /customs_clearances/1 or /customs_clearances/1.json
  def show
  end

  # GET /customs_clearances/new
  def new
    @customs_clearance = CustomsClearance.new
  end

  # GET /customs_clearances/1/edit
  def edit
  end

  # POST /customs_clearances or /customs_clearances.json
  def create
    @customs_clearance = CustomsClearance.new(customs_clearance_params)

    respond_to do |format|
      if @customs_clearance.save
        format.html { redirect_to @customs_clearance, notice: "Customs clearance was successfully created." }
        format.json { render :show, status: :created, location: @customs_clearance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customs_clearance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customs_clearances/1 or /customs_clearances/1.json
  def update
    respond_to do |format|
      if @customs_clearance.update(customs_clearance_params)
        format.html { redirect_to @customs_clearance, notice: "Customs clearance was successfully updated." }
        format.json { render :show, status: :ok, location: @customs_clearance }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customs_clearance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customs_clearances/1 or /customs_clearances/1.json
  def destroy
    @customs_clearance.destroy!

    respond_to do |format|
      format.html { redirect_to customs_clearances_path, status: :see_other, notice: "Customs clearance was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customs_clearance
      @customs_clearance = CustomsClearance.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def customs_clearance_params
      params.expect(customs_clearance: [ :reference, :import_license, :import_license_date, :import_license_type, :import_declaration, :import_declaration_date, :parametrization_channel, :di_status, :import_type, :cargo_location, :customs_costs, :documentation ])
    end
end

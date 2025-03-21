class CostSimulationsController < ApplicationController
  before_action :set_cost_simulation, only: %i[ show edit update destroy ]

  # GET /cost_simulations or /cost_simulations.json
  def index
    @cost_simulations = CostSimulation.all
  end

  # GET /cost_simulations/1 or /cost_simulations/1.json
  def show
  end

  # GET /cost_simulations/new
  def new
    @cost_simulation = CostSimulation.new
  end

  # GET /cost_simulations/1/edit
  def edit
  end

  # POST /cost_simulations or /cost_simulations.json
  def create
    @cost_simulation = CostSimulation.new(cost_simulation_params)

    respond_to do |format|
      if @cost_simulation.save
        format.html { redirect_to @cost_simulation, notice: "Cost simulation was successfully created." }
        format.json { render :show, status: :created, location: @cost_simulation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cost_simulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cost_simulations/1 or /cost_simulations/1.json
  def update
    respond_to do |format|
      if @cost_simulation.update(cost_simulation_params)
        format.html { redirect_to @cost_simulation, notice: "Cost simulation was successfully updated." }
        format.json { render :show, status: :ok, location: @cost_simulation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cost_simulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cost_simulations/1 or /cost_simulations/1.json
  def destroy
    @cost_simulation.destroy!

    respond_to do |format|
      format.html { redirect_to cost_simulations_path, status: :see_other, notice: "Cost simulation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cost_simulation
      @cost_simulation = CostSimulation.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def cost_simulation_params
      params.expect(cost_simulation: [ :product, :fob_price, :freight_cost, :insurance, :import_taxes, :total_cost ])
    end
end

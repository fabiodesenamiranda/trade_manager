class ImportProcessesController < ApplicationController
  before_action :set_import_process, only: %i[ show edit update destroy ]
  before_action :set_agents_and_products, only: %i[ new edit create update ]

  # GET /import_processes or /import_processes.json
  def index
    @import_processes = ImportProcess.includes(:supplier, :products).all
  end

  # GET /import_processes/1 or /import_processes/1.json
  def show
  end

  # GET /import_processes/new
  def new
    @import_process = ImportProcess.new
  end

  # GET /import_processes/1/edit
  def edit
  end

  # POST /import_processes or /import_processes.json
  def create
    @import_process = ImportProcess.new(import_process_params)

    respond_to do |format|
      if @import_process.save
        format.html { redirect_to @import_process, notice: "Import process was successfully created." }
        format.json { render :show, status: :created, location: @import_process }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @import_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /import_processes/1 or /import_processes/1.json
  def update
    respond_to do |format|
      if @import_process.update(import_process_params)
        format.html { redirect_to @import_process, notice: "Import process was successfully updated." }
        format.json { render :show, status: :ok, location: @import_process }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @import_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /import_processes/1 or /import_processes/1.json
  def destroy
    @import_process.destroy!

    respond_to do |format|
      format.html { redirect_to import_processes_path, status: :see_other, notice: "Import process was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_import_process
      @import_process = ImportProcess.find(params[:id])
    end

    def set_agents_and_products
      @suppliers = Agent.where(agent_type: ["Fornecedor", "Exportador"])
      @products = Product.all
    end

    # Only allow a list of trusted parameters through.
    def import_process_params
      params.require(:import_process).permit(
        :process_number, 
        :invoice_number, 
        :invoice_date, 
        :supplier_id, 
        :incoterm, 
        :payment_term, 
        :status, 
        product_ids: []
      )
    end
end

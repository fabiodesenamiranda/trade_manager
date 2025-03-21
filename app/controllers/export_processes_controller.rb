class ExportProcessesController < ApplicationController
  before_action :set_export_process, only: %i[ show edit update destroy ]

  # GET /export_processes or /export_processes.json
  def index
    @export_processes = ExportProcess.all
  end

  # GET /export_processes/1 or /export_processes/1.json
  def show
  end

  # GET /export_processes/new
  def new
    @export_process = ExportProcess.new
  end

  # GET /export_processes/1/edit
  def edit
  end

  # POST /export_processes or /export_processes.json
  def create
    @export_process = ExportProcess.new(export_process_params)

    respond_to do |format|
      if @export_process.save
        format.html { redirect_to @export_process, notice: "Export process was successfully created." }
        format.json { render :show, status: :created, location: @export_process }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @export_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /export_processes/1 or /export_processes/1.json
  def update
    respond_to do |format|
      if @export_process.update(export_process_params)
        format.html { redirect_to @export_process, notice: "Export process was successfully updated." }
        format.json { render :show, status: :ok, location: @export_process }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @export_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /export_processes/1 or /export_processes/1.json
  def destroy
    @export_process.destroy!

    respond_to do |format|
      format.html { redirect_to export_processes_path, status: :see_other, notice: "Export process was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_export_process
      @export_process = ExportProcess.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def export_process_params
      params.expect(export_process: [ :process_number, :exporter, :client, :product_description, :status ])
    end
end

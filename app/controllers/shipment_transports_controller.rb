class ShipmentTransportsController < ApplicationController
  before_action :set_shipment_transport, only: %i[ show edit update destroy ]

  # GET /shipment_transports or /shipment_transports.json
  def index
    @shipment_transports = ShipmentTransport.all
  end

  # GET /shipment_transports/1 or /shipment_transports/1.json
  def show
  end

  # GET /shipment_transports/new
  def new
    @shipment_transport = ShipmentTransport.new
  end

  # GET /shipment_transports/1/edit
  def edit
  end

  # POST /shipment_transports or /shipment_transports.json
  def create
    @shipment_transport = ShipmentTransport.new(shipment_transport_params)

    respond_to do |format|
      if @shipment_transport.save
        format.html { redirect_to @shipment_transport, notice: "Shipment transport was successfully created." }
        format.json { render :show, status: :created, location: @shipment_transport }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shipment_transport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipment_transports/1 or /shipment_transports/1.json
  def update
    respond_to do |format|
      if @shipment_transport.update(shipment_transport_params)
        format.html { redirect_to @shipment_transport, notice: "Shipment transport was successfully updated." }
        format.json { render :show, status: :ok, location: @shipment_transport }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shipment_transport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipment_transports/1 or /shipment_transports/1.json
  def destroy
    @shipment_transport.destroy!

    respond_to do |format|
      format.html { redirect_to shipment_transports_path, status: :see_other, notice: "Shipment transport was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment_transport
      @shipment_transport = ShipmentTransport.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def shipment_transport_params
      params.expect(shipment_transport: [ :reference, :transport_mode, :origin_country, :destination_country, :origin_port, :destination_port, :net_weight, :gross_weight, :cubic_volume, :equipment_type, :transit_time, :shipment_type, :free_time, :route, :eta, :etd, :shipping_company, :shipping_agency, :transport_doc_type, :transport_doc_number, :transport_doc_date ])
    end
end

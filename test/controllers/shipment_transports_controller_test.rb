require "test_helper"

class ShipmentTransportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipment_transport = shipment_transports(:one)
  end

  test "should get index" do
    get shipment_transports_url
    assert_response :success
  end

  test "should get new" do
    get new_shipment_transport_url
    assert_response :success
  end

  test "should create shipment_transport" do
    assert_difference("ShipmentTransport.count") do
      post shipment_transports_url, params: { shipment_transport: { cubic_volume: @shipment_transport.cubic_volume, destination_country: @shipment_transport.destination_country, destination_port: @shipment_transport.destination_port, equipment_type: @shipment_transport.equipment_type, eta: @shipment_transport.eta, etd: @shipment_transport.etd, free_time: @shipment_transport.free_time, gross_weight: @shipment_transport.gross_weight, net_weight: @shipment_transport.net_weight, origin_country: @shipment_transport.origin_country, origin_port: @shipment_transport.origin_port, reference: @shipment_transport.reference, route: @shipment_transport.route, shipment_type: @shipment_transport.shipment_type, shipping_agency: @shipment_transport.shipping_agency, shipping_company: @shipment_transport.shipping_company, transit_time: @shipment_transport.transit_time, transport_doc_date: @shipment_transport.transport_doc_date, transport_doc_number: @shipment_transport.transport_doc_number, transport_doc_type: @shipment_transport.transport_doc_type, transport_mode: @shipment_transport.transport_mode } }
    end

    assert_redirected_to shipment_transport_url(ShipmentTransport.last)
  end

  test "should show shipment_transport" do
    get shipment_transport_url(@shipment_transport)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipment_transport_url(@shipment_transport)
    assert_response :success
  end

  test "should update shipment_transport" do
    patch shipment_transport_url(@shipment_transport), params: { shipment_transport: { cubic_volume: @shipment_transport.cubic_volume, destination_country: @shipment_transport.destination_country, destination_port: @shipment_transport.destination_port, equipment_type: @shipment_transport.equipment_type, eta: @shipment_transport.eta, etd: @shipment_transport.etd, free_time: @shipment_transport.free_time, gross_weight: @shipment_transport.gross_weight, net_weight: @shipment_transport.net_weight, origin_country: @shipment_transport.origin_country, origin_port: @shipment_transport.origin_port, reference: @shipment_transport.reference, route: @shipment_transport.route, shipment_type: @shipment_transport.shipment_type, shipping_agency: @shipment_transport.shipping_agency, shipping_company: @shipment_transport.shipping_company, transit_time: @shipment_transport.transit_time, transport_doc_date: @shipment_transport.transport_doc_date, transport_doc_number: @shipment_transport.transport_doc_number, transport_doc_type: @shipment_transport.transport_doc_type, transport_mode: @shipment_transport.transport_mode } }
    assert_redirected_to shipment_transport_url(@shipment_transport)
  end

  test "should destroy shipment_transport" do
    assert_difference("ShipmentTransport.count", -1) do
      delete shipment_transport_url(@shipment_transport)
    end

    assert_redirected_to shipment_transports_url
  end
end

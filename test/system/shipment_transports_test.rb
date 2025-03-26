require "application_system_test_case"

class ShipmentTransportsTest < ApplicationSystemTestCase
  setup do
    @shipment_transport = shipment_transports(:one)
  end

  test "visiting the index" do
    visit shipment_transports_url
    assert_selector "h1", text: "Shipment transports"
  end

  test "should create shipment transport" do
    visit shipment_transports_url
    click_on "New shipment transport"

    fill_in "Cubic volume", with: @shipment_transport.cubic_volume
    fill_in "Destination country", with: @shipment_transport.destination_country
    fill_in "Destination port", with: @shipment_transport.destination_port
    fill_in "Equipment type", with: @shipment_transport.equipment_type
    fill_in "Eta", with: @shipment_transport.eta
    fill_in "Etd", with: @shipment_transport.etd
    fill_in "Free time", with: @shipment_transport.free_time
    fill_in "Gross weight", with: @shipment_transport.gross_weight
    fill_in "Net weight", with: @shipment_transport.net_weight
    fill_in "Origin country", with: @shipment_transport.origin_country
    fill_in "Origin port", with: @shipment_transport.origin_port
    fill_in "Reference", with: @shipment_transport.reference
    fill_in "Route", with: @shipment_transport.route
    fill_in "Shipment type", with: @shipment_transport.shipment_type
    fill_in "Shipping agency", with: @shipment_transport.shipping_agency
    fill_in "Shipping company", with: @shipment_transport.shipping_company
    fill_in "Transit time", with: @shipment_transport.transit_time
    fill_in "Transport doc date", with: @shipment_transport.transport_doc_date
    fill_in "Transport doc number", with: @shipment_transport.transport_doc_number
    fill_in "Transport doc type", with: @shipment_transport.transport_doc_type
    fill_in "Transport mode", with: @shipment_transport.transport_mode
    click_on "Create Shipment transport"

    assert_text "Shipment transport was successfully created"
    click_on "Back"
  end

  test "should update Shipment transport" do
    visit shipment_transport_url(@shipment_transport)
    click_on "Edit this shipment transport", match: :first

    fill_in "Cubic volume", with: @shipment_transport.cubic_volume
    fill_in "Destination country", with: @shipment_transport.destination_country
    fill_in "Destination port", with: @shipment_transport.destination_port
    fill_in "Equipment type", with: @shipment_transport.equipment_type
    fill_in "Eta", with: @shipment_transport.eta
    fill_in "Etd", with: @shipment_transport.etd
    fill_in "Free time", with: @shipment_transport.free_time
    fill_in "Gross weight", with: @shipment_transport.gross_weight
    fill_in "Net weight", with: @shipment_transport.net_weight
    fill_in "Origin country", with: @shipment_transport.origin_country
    fill_in "Origin port", with: @shipment_transport.origin_port
    fill_in "Reference", with: @shipment_transport.reference
    fill_in "Route", with: @shipment_transport.route
    fill_in "Shipment type", with: @shipment_transport.shipment_type
    fill_in "Shipping agency", with: @shipment_transport.shipping_agency
    fill_in "Shipping company", with: @shipment_transport.shipping_company
    fill_in "Transit time", with: @shipment_transport.transit_time
    fill_in "Transport doc date", with: @shipment_transport.transport_doc_date
    fill_in "Transport doc number", with: @shipment_transport.transport_doc_number
    fill_in "Transport doc type", with: @shipment_transport.transport_doc_type
    fill_in "Transport mode", with: @shipment_transport.transport_mode
    click_on "Update Shipment transport"

    assert_text "Shipment transport was successfully updated"
    click_on "Back"
  end

  test "should destroy Shipment transport" do
    visit shipment_transport_url(@shipment_transport)
    click_on "Destroy this shipment transport", match: :first

    assert_text "Shipment transport was successfully destroyed"
  end
end

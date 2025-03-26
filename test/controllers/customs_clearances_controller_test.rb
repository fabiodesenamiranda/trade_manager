require "test_helper"

class CustomsClearancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customs_clearance = customs_clearances(:one)
  end

  test "should get index" do
    get customs_clearances_url
    assert_response :success
  end

  test "should get new" do
    get new_customs_clearance_url
    assert_response :success
  end

  test "should create customs_clearance" do
    assert_difference("CustomsClearance.count") do
      post customs_clearances_url, params: { customs_clearance: { cargo_location: @customs_clearance.cargo_location, customs_costs: @customs_clearance.customs_costs, di_status: @customs_clearance.di_status, documentation: @customs_clearance.documentation, import_declaration: @customs_clearance.import_declaration, import_declaration_date: @customs_clearance.import_declaration_date, import_license: @customs_clearance.import_license, import_license_date: @customs_clearance.import_license_date, import_license_type: @customs_clearance.import_license_type, import_type: @customs_clearance.import_type, parametrization_channel: @customs_clearance.parametrization_channel, reference: @customs_clearance.reference } }
    end

    assert_redirected_to customs_clearance_url(CustomsClearance.last)
  end

  test "should show customs_clearance" do
    get customs_clearance_url(@customs_clearance)
    assert_response :success
  end

  test "should get edit" do
    get edit_customs_clearance_url(@customs_clearance)
    assert_response :success
  end

  test "should update customs_clearance" do
    patch customs_clearance_url(@customs_clearance), params: { customs_clearance: { cargo_location: @customs_clearance.cargo_location, customs_costs: @customs_clearance.customs_costs, di_status: @customs_clearance.di_status, documentation: @customs_clearance.documentation, import_declaration: @customs_clearance.import_declaration, import_declaration_date: @customs_clearance.import_declaration_date, import_license: @customs_clearance.import_license, import_license_date: @customs_clearance.import_license_date, import_license_type: @customs_clearance.import_license_type, import_type: @customs_clearance.import_type, parametrization_channel: @customs_clearance.parametrization_channel, reference: @customs_clearance.reference } }
    assert_redirected_to customs_clearance_url(@customs_clearance)
  end

  test "should destroy customs_clearance" do
    assert_difference("CustomsClearance.count", -1) do
      delete customs_clearance_url(@customs_clearance)
    end

    assert_redirected_to customs_clearances_url
  end
end

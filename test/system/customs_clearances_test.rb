require "application_system_test_case"

class CustomsClearancesTest < ApplicationSystemTestCase
  setup do
    @customs_clearance = customs_clearances(:one)
  end

  test "visiting the index" do
    visit customs_clearances_url
    assert_selector "h1", text: "Customs clearances"
  end

  test "should create customs clearance" do
    visit customs_clearances_url
    click_on "New customs clearance"

    fill_in "Cargo location", with: @customs_clearance.cargo_location
    fill_in "Customs costs", with: @customs_clearance.customs_costs
    fill_in "Di status", with: @customs_clearance.di_status
    fill_in "Documentation", with: @customs_clearance.documentation
    fill_in "Import declaration", with: @customs_clearance.import_declaration
    fill_in "Import declaration date", with: @customs_clearance.import_declaration_date
    fill_in "Import license", with: @customs_clearance.import_license
    fill_in "Import license date", with: @customs_clearance.import_license_date
    fill_in "Import license type", with: @customs_clearance.import_license_type
    fill_in "Import type", with: @customs_clearance.import_type
    fill_in "Parametrization channel", with: @customs_clearance.parametrization_channel
    fill_in "Reference", with: @customs_clearance.reference
    click_on "Create Customs clearance"

    assert_text "Customs clearance was successfully created"
    click_on "Back"
  end

  test "should update Customs clearance" do
    visit customs_clearance_url(@customs_clearance)
    click_on "Edit this customs clearance", match: :first

    fill_in "Cargo location", with: @customs_clearance.cargo_location
    fill_in "Customs costs", with: @customs_clearance.customs_costs
    fill_in "Di status", with: @customs_clearance.di_status
    fill_in "Documentation", with: @customs_clearance.documentation
    fill_in "Import declaration", with: @customs_clearance.import_declaration
    fill_in "Import declaration date", with: @customs_clearance.import_declaration_date
    fill_in "Import license", with: @customs_clearance.import_license
    fill_in "Import license date", with: @customs_clearance.import_license_date
    fill_in "Import license type", with: @customs_clearance.import_license_type
    fill_in "Import type", with: @customs_clearance.import_type
    fill_in "Parametrization channel", with: @customs_clearance.parametrization_channel
    fill_in "Reference", with: @customs_clearance.reference
    click_on "Update Customs clearance"

    assert_text "Customs clearance was successfully updated"
    click_on "Back"
  end

  test "should destroy Customs clearance" do
    visit customs_clearance_url(@customs_clearance)
    click_on "Destroy this customs clearance", match: :first

    assert_text "Customs clearance was successfully destroyed"
  end
end

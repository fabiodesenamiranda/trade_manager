require "application_system_test_case"

class ImportProcessesTest < ApplicationSystemTestCase
  setup do
    @import_process = import_processes(:one)
  end

  test "visiting the index" do
    visit import_processes_url
    assert_selector "h1", text: "Import processes"
  end

  test "should create import process" do
    visit import_processes_url
    click_on "New import process"

    fill_in "Importer", with: @import_process.importer
    fill_in "Process number", with: @import_process.process_number
    fill_in "Product description", with: @import_process.product_description
    fill_in "Status", with: @import_process.status
    fill_in "Supplier", with: @import_process.supplier
    click_on "Create Import process"

    assert_text "Import process was successfully created"
    click_on "Back"
  end

  test "should update Import process" do
    visit import_process_url(@import_process)
    click_on "Edit this import process", match: :first

    fill_in "Importer", with: @import_process.importer
    fill_in "Process number", with: @import_process.process_number
    fill_in "Product description", with: @import_process.product_description
    fill_in "Status", with: @import_process.status
    fill_in "Supplier", with: @import_process.supplier
    click_on "Update Import process"

    assert_text "Import process was successfully updated"
    click_on "Back"
  end

  test "should destroy Import process" do
    visit import_process_url(@import_process)
    click_on "Destroy this import process", match: :first

    assert_text "Import process was successfully destroyed"
  end
end

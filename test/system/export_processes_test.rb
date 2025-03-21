require "application_system_test_case"

class ExportProcessesTest < ApplicationSystemTestCase
  setup do
    @export_process = export_processes(:one)
  end

  test "visiting the index" do
    visit export_processes_url
    assert_selector "h1", text: "Export processes"
  end

  test "should create export process" do
    visit export_processes_url
    click_on "New export process"

    fill_in "Client", with: @export_process.client
    fill_in "Exporter", with: @export_process.exporter
    fill_in "Process number", with: @export_process.process_number
    fill_in "Product description", with: @export_process.product_description
    fill_in "Status", with: @export_process.status
    click_on "Create Export process"

    assert_text "Export process was successfully created"
    click_on "Back"
  end

  test "should update Export process" do
    visit export_process_url(@export_process)
    click_on "Edit this export process", match: :first

    fill_in "Client", with: @export_process.client
    fill_in "Exporter", with: @export_process.exporter
    fill_in "Process number", with: @export_process.process_number
    fill_in "Product description", with: @export_process.product_description
    fill_in "Status", with: @export_process.status
    click_on "Update Export process"

    assert_text "Export process was successfully updated"
    click_on "Back"
  end

  test "should destroy Export process" do
    visit export_process_url(@export_process)
    click_on "Destroy this export process", match: :first

    assert_text "Export process was successfully destroyed"
  end
end

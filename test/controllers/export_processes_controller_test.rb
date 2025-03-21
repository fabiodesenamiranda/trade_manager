require "test_helper"

class ExportProcessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @export_process = export_processes(:one)
  end

  test "should get index" do
    get export_processes_url
    assert_response :success
  end

  test "should get new" do
    get new_export_process_url
    assert_response :success
  end

  test "should create export_process" do
    assert_difference("ExportProcess.count") do
      post export_processes_url, params: { export_process: { client: @export_process.client, exporter: @export_process.exporter, process_number: @export_process.process_number, product_description: @export_process.product_description, status: @export_process.status } }
    end

    assert_redirected_to export_process_url(ExportProcess.last)
  end

  test "should show export_process" do
    get export_process_url(@export_process)
    assert_response :success
  end

  test "should get edit" do
    get edit_export_process_url(@export_process)
    assert_response :success
  end

  test "should update export_process" do
    patch export_process_url(@export_process), params: { export_process: { client: @export_process.client, exporter: @export_process.exporter, process_number: @export_process.process_number, product_description: @export_process.product_description, status: @export_process.status } }
    assert_redirected_to export_process_url(@export_process)
  end

  test "should destroy export_process" do
    assert_difference("ExportProcess.count", -1) do
      delete export_process_url(@export_process)
    end

    assert_redirected_to export_processes_url
  end
end

require "test_helper"

class CostSimulationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cost_simulation = cost_simulations(:one)
  end

  test "should get index" do
    get cost_simulations_url
    assert_response :success
  end

  test "should get new" do
    get new_cost_simulation_url
    assert_response :success
  end

  test "should create cost_simulation" do
    assert_difference("CostSimulation.count") do
      post cost_simulations_url, params: { cost_simulation: { fob_price: @cost_simulation.fob_price, freight_cost: @cost_simulation.freight_cost, import_taxes: @cost_simulation.import_taxes, insurance: @cost_simulation.insurance, product: @cost_simulation.product, total_cost: @cost_simulation.total_cost } }
    end

    assert_redirected_to cost_simulation_url(CostSimulation.last)
  end

  test "should show cost_simulation" do
    get cost_simulation_url(@cost_simulation)
    assert_response :success
  end

  test "should get edit" do
    get edit_cost_simulation_url(@cost_simulation)
    assert_response :success
  end

  test "should update cost_simulation" do
    patch cost_simulation_url(@cost_simulation), params: { cost_simulation: { fob_price: @cost_simulation.fob_price, freight_cost: @cost_simulation.freight_cost, import_taxes: @cost_simulation.import_taxes, insurance: @cost_simulation.insurance, product: @cost_simulation.product, total_cost: @cost_simulation.total_cost } }
    assert_redirected_to cost_simulation_url(@cost_simulation)
  end

  test "should destroy cost_simulation" do
    assert_difference("CostSimulation.count", -1) do
      delete cost_simulation_url(@cost_simulation)
    end

    assert_redirected_to cost_simulations_url
  end
end

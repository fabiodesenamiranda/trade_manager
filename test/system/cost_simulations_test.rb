require "application_system_test_case"

class CostSimulationsTest < ApplicationSystemTestCase
  setup do
    @cost_simulation = cost_simulations(:one)
  end

  test "visiting the index" do
    visit cost_simulations_url
    assert_selector "h1", text: "Cost simulations"
  end

  test "should create cost simulation" do
    visit cost_simulations_url
    click_on "New cost simulation"

    fill_in "Fob price", with: @cost_simulation.fob_price
    fill_in "Freight cost", with: @cost_simulation.freight_cost
    fill_in "Import taxes", with: @cost_simulation.import_taxes
    fill_in "Insurance", with: @cost_simulation.insurance
    fill_in "Product", with: @cost_simulation.product
    fill_in "Total cost", with: @cost_simulation.total_cost
    click_on "Create Cost simulation"

    assert_text "Cost simulation was successfully created"
    click_on "Back"
  end

  test "should update Cost simulation" do
    visit cost_simulation_url(@cost_simulation)
    click_on "Edit this cost simulation", match: :first

    fill_in "Fob price", with: @cost_simulation.fob_price
    fill_in "Freight cost", with: @cost_simulation.freight_cost
    fill_in "Import taxes", with: @cost_simulation.import_taxes
    fill_in "Insurance", with: @cost_simulation.insurance
    fill_in "Product", with: @cost_simulation.product
    fill_in "Total cost", with: @cost_simulation.total_cost
    click_on "Update Cost simulation"

    assert_text "Cost simulation was successfully updated"
    click_on "Back"
  end

  test "should destroy Cost simulation" do
    visit cost_simulation_url(@cost_simulation)
    click_on "Destroy this cost simulation", match: :first

    assert_text "Cost simulation was successfully destroyed"
  end
end

require "application_system_test_case"

class FreightQuotesTest < ApplicationSystemTestCase
  setup do
    @freight_quote = freight_quotes(:one)
  end

  test "visiting the index" do
    visit freight_quotes_url
    assert_selector "h1", text: "Freight quotes"
  end

  test "should create freight quote" do
    visit freight_quotes_url
    click_on "New freight quote"

    fill_in "Cost", with: @freight_quote.cost
    fill_in "Estimated days", with: @freight_quote.estimated_days
    fill_in "Provider", with: @freight_quote.provider
    fill_in "Transport mode", with: @freight_quote.transport_mode
    click_on "Create Freight quote"

    assert_text "Freight quote was successfully created"
    click_on "Back"
  end

  test "should update Freight quote" do
    visit freight_quote_url(@freight_quote)
    click_on "Edit this freight quote", match: :first

    fill_in "Cost", with: @freight_quote.cost
    fill_in "Estimated days", with: @freight_quote.estimated_days
    fill_in "Provider", with: @freight_quote.provider
    fill_in "Transport mode", with: @freight_quote.transport_mode
    click_on "Update Freight quote"

    assert_text "Freight quote was successfully updated"
    click_on "Back"
  end

  test "should destroy Freight quote" do
    visit freight_quote_url(@freight_quote)
    click_on "Destroy this freight quote", match: :first

    assert_text "Freight quote was successfully destroyed"
  end
end

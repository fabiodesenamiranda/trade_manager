require "test_helper"

class FreightQuotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @freight_quote = freight_quotes(:one)
  end

  test "should get index" do
    get freight_quotes_url
    assert_response :success
  end

  test "should get new" do
    get new_freight_quote_url
    assert_response :success
  end

  test "should create freight_quote" do
    assert_difference("FreightQuote.count") do
      post freight_quotes_url, params: { freight_quote: { cost: @freight_quote.cost, estimated_days: @freight_quote.estimated_days, provider: @freight_quote.provider, transport_mode: @freight_quote.transport_mode } }
    end

    assert_redirected_to freight_quote_url(FreightQuote.last)
  end

  test "should show freight_quote" do
    get freight_quote_url(@freight_quote)
    assert_response :success
  end

  test "should get edit" do
    get edit_freight_quote_url(@freight_quote)
    assert_response :success
  end

  test "should update freight_quote" do
    patch freight_quote_url(@freight_quote), params: { freight_quote: { cost: @freight_quote.cost, estimated_days: @freight_quote.estimated_days, provider: @freight_quote.provider, transport_mode: @freight_quote.transport_mode } }
    assert_redirected_to freight_quote_url(@freight_quote)
  end

  test "should destroy freight_quote" do
    assert_difference("FreightQuote.count", -1) do
      delete freight_quote_url(@freight_quote)
    end

    assert_redirected_to freight_quotes_url
  end
end

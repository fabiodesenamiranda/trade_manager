require "application_system_test_case"

class AgentsTest < ApplicationSystemTestCase
  setup do
    @agent = agents(:one)
  end

  test "visiting the index" do
    visit agents_url
    assert_selector "h1", text: "Agents"
  end

  test "should create agent" do
    visit agents_url
    click_on "New agent"

    fill_in "Address", with: @agent.address
    fill_in "Agent type", with: @agent.agent_type
    fill_in "City", with: @agent.city
    fill_in "Country", with: @agent.country
    fill_in "Email", with: @agent.email
    fill_in "Name", with: @agent.name
    fill_in "Neighborhood", with: @agent.neighborhood
    fill_in "Number", with: @agent.number
    fill_in "Phone", with: @agent.phone
    fill_in "State", with: @agent.state
    fill_in "Zip code", with: @agent.zip_code
    click_on "Create Agent"

    assert_text "Agent was successfully created"
    click_on "Back"
  end

  test "should update Agent" do
    visit agent_url(@agent)
    click_on "Edit this agent", match: :first

    fill_in "Address", with: @agent.address
    fill_in "Agent type", with: @agent.agent_type
    fill_in "City", with: @agent.city
    fill_in "Country", with: @agent.country
    fill_in "Email", with: @agent.email
    fill_in "Name", with: @agent.name
    fill_in "Neighborhood", with: @agent.neighborhood
    fill_in "Number", with: @agent.number
    fill_in "Phone", with: @agent.phone
    fill_in "State", with: @agent.state
    fill_in "Zip code", with: @agent.zip_code
    click_on "Update Agent"

    assert_text "Agent was successfully updated"
    click_on "Back"
  end

  test "should destroy Agent" do
    visit agent_url(@agent)
    click_on "Destroy this agent", match: :first

    assert_text "Agent was successfully destroyed"
  end
end

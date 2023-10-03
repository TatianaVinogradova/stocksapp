require "application_system_test_case"

class StockstestappsTest < ApplicationSystemTestCase
  setup do
    @stockstestapp = stockstestapps(:one)
  end

  test "visiting the index" do
    visit stockstestapps_url
    assert_selector "h1", text: "Stockstestapps"
  end

  test "should create stockstestapp" do
    visit stockstestapps_url
    click_on "New stockstestapp"

    fill_in "Date", with: @stockstestapp.date
    fill_in "Funds name", with: @stockstestapp.funds_name
    fill_in "Price", with: @stockstestapp.price
    fill_in "Stockname", with: @stockstestapp.stockname
    click_on "Create Stockstestapp"

    assert_text "Stockstestapp was successfully created"
    click_on "Back"
  end

  test "should update Stockstestapp" do
    visit stockstestapp_url(@stockstestapp)
    click_on "Edit this stockstestapp", match: :first

    fill_in "Date", with: @stockstestapp.date
    fill_in "Funds name", with: @stockstestapp.funds_name
    fill_in "Price", with: @stockstestapp.price
    fill_in "Stockname", with: @stockstestapp.stockname
    click_on "Update Stockstestapp"

    assert_text "Stockstestapp was successfully updated"
    click_on "Back"
  end

  test "should destroy Stockstestapp" do
    visit stockstestapp_url(@stockstestapp)
    click_on "Destroy this stockstestapp", match: :first

    assert_text "Stockstestapp was successfully destroyed"
  end
end

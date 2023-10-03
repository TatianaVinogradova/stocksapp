require "test_helper"

class StockstestappsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stockstestapp = stockstestapps(:one)
  end

  test "should get index" do
    get stockstestapps_url
    assert_response :success
  end

  test "should get new" do
    get new_stockstestapp_url
    assert_response :success
  end

  test "should create stockstestapp" do
    assert_difference("Stockstestapp.count") do
      post stockstestapps_url, params: { stockstestapp: { date: @stockstestapp.date, funds_name: @stockstestapp.funds_name, price: @stockstestapp.price, stockname: @stockstestapp.stockname } }
    end

    assert_redirected_to stockstestapp_url(Stockstestapp.last)
  end

  test "should show stockstestapp" do
    get stockstestapp_url(@stockstestapp)
    assert_response :success
  end

  test "should get edit" do
    get edit_stockstestapp_url(@stockstestapp)
    assert_response :success
  end

  test "should update stockstestapp" do
    patch stockstestapp_url(@stockstestapp), params: { stockstestapp: { date: @stockstestapp.date, funds_name: @stockstestapp.funds_name, price: @stockstestapp.price, stockname: @stockstestapp.stockname } }
    assert_redirected_to stockstestapp_url(@stockstestapp)
  end

  test "should destroy stockstestapp" do
    assert_difference("Stockstestapp.count", -1) do
      delete stockstestapp_url(@stockstestapp)
    end

    assert_redirected_to stockstestapps_url
  end
end

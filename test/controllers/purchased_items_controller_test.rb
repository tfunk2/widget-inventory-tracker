require 'test_helper'

class PurchasedItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchased_item = purchased_items(:one)
  end

  test "should get index" do
    get purchased_items_url, as: :json
    assert_response :success
  end

  test "should create purchased_item" do
    assert_difference('PurchasedItem.count') do
      post purchased_items_url, params: { purchased_item: { order_id: @purchased_item.order_id, quantity: @purchased_item.quantity, widget_id: @purchased_item.widget_id } }, as: :json
    end

    assert_response 201
  end

  test "should show purchased_item" do
    get purchased_item_url(@purchased_item), as: :json
    assert_response :success
  end

  test "should update purchased_item" do
    patch purchased_item_url(@purchased_item), params: { purchased_item: { order_id: @purchased_item.order_id, quantity: @purchased_item.quantity, widget_id: @purchased_item.widget_id } }, as: :json
    assert_response 200
  end

  test "should destroy purchased_item" do
    assert_difference('PurchasedItem.count', -1) do
      delete purchased_item_url(@purchased_item), as: :json
    end

    assert_response 204
  end
end

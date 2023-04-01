require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "should create order" do
    visit orders_url
    click_on "New order"

    fill_in "Carrier", with: @order.carrier_id
    fill_in "Delivery address", with: @order.delivery_address
    fill_in "Equipment type", with: @order.equipment_type
    fill_in "Orderer", with: @order.orderer_id
    fill_in "Orderer type", with: @order.orderer_type
    fill_in "Pickup address", with: @order.pickup_address
    fill_in "Pickup date", with: @order.pickup_date
    fill_in "Status", with: @order.status
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit order_url(@order)
    click_on "Edit this order", match: :first

    fill_in "Carrier", with: @order.carrier_id
    fill_in "Delivery address", with: @order.delivery_address
    fill_in "Equipment type", with: @order.equipment_type
    fill_in "Orderer", with: @order.orderer_id
    fill_in "Orderer type", with: @order.orderer_type
    fill_in "Pickup address", with: @order.pickup_address
    fill_in "Pickup date", with: @order.pickup_date
    fill_in "Status", with: @order.status
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "should destroy Order" do
    visit order_url(@order)
    click_on "Destroy this order", match: :first

    assert_text "Order was successfully destroyed"
  end
end

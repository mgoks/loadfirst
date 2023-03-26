require "test_helper"

class LoadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @load = loads(:yoskars_load)
  end

  test "should get index" do
    get loads_url
    assert_response :success
  end

  test "should get new" do
    get new_load_url
    assert_response :success
  end

  test "should create load" do
    assert_difference("Load.count") do
      post loads_url, params: { 
        load: { 
          delivery_location: @load.delivery_location,
          equipment_type: @load.equipment_type,
          pickup_date: @load.pickup_date,
          pickup_location: @load.pickup_location,
          shipper_email: @load.shipper_email,
          shipper_phone: @load.shipper_phone 
        } 
      }
    end

    assert_redirected_to load_url(Load.last)
  end

  test "should show load" do
    get load_url(@load)
    assert_response :success
  end

  test "should get edit" do
    get edit_load_url(@load)
    assert_response :success
  end

  test "should update load" do
    patch load_url(@load), params: { load: { delivery_location: @load.delivery_location, equipment_type: @load.equipment_type, pickup_date: @load.pickup_date, pickup_location: @load.pickup_location, shipper_email: @load.shipper_email, shipper_phone: @load.shipper_phone } }
    assert_redirected_to load_url(@load)
  end

  test "should destroy load" do
    assert_difference("Load.count", -1) do
      delete load_url(@load)
    end

    assert_redirected_to loads_url
  end

  # todo Add more unit tests.
  # Add test data to test/fixtures/loads.yml.
  
end

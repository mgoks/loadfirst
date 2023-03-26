require "test_helper"

class LoadTest < ActiveSupport::TestCase

  test "load attributes must not be empty" do
    load = Load.new
    assert load.invalid?
    assert load.errors[:delivery_location].any?
    assert load.errors[:equipment_type].any?
    assert load.errors[:pickup_date].any?
    assert load.errors[:pickup_location].any?
    assert load.errors[:shipper_email].any?
    assert load.errors[:shipper_phone].any?
  end

end

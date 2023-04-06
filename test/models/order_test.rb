# frozen_string_literal: true

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  fixtures :orders

  test 'should not save order without delivery address' do
    order = Order.new
    assert_not order.save
  end

  test 'should not save order without equipment type' do
    order = Order.new
    assert_not order.save
  end

  test 'should not save order without orderer id' do
    order = Order.new
    assert_not order.save
  end

  test 'should not save order without orderer type' do
    order = Order.new
    assert_not order.save
  end

  test 'should not save order without pickup address' do
    order = Order.new
    assert_not order.save
  end

  test 'should not save order without pickup date' do
    order = Order.new
    assert_not order.save
  end

  test 'should not save order without status' do
    order = Order.new
    assert_not order.save
  end

  test 'order attributes must not be empty' do
    order = Order.new
    assert order.invalid?
    assert order.errors[:delivery_address].any?
    assert order.errors[:equipment_type].any?
    assert order.errors[:orderer_id].any?
    assert order.errors[:orderer_type].any?
    assert order.errors[:pickup_address].any?
    assert order.errors[:pickup_date].any?
    assert order.errors[:status].any?
  end
end

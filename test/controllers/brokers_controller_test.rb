# frozen_string_literal: true

require 'test_helper'

class BrokersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @broker = brokers(:one)
  end

  test 'should get index' do
    get brokers_url
    assert_response :success
  end

  test 'should get new' do
    get new_broker_url
    assert_response :success
  end

  test 'should create broker' do
    assert_difference('Broker.count') do
      post brokers_url,
           params: { broker: { address: @broker.address, country: @broker.country, email: @broker.email, mc: @broker.mc,
                               name: @broker.name, phone: @broker.phone, usdot: @broker.usdot } }
    end

    assert_redirected_to broker_url(Broker.last)
  end

  test 'should show broker' do
    get broker_url(@broker)
    assert_response :success
  end

  test 'should get edit' do
    get edit_broker_url(@broker)
    assert_response :success
  end

  test 'should update broker' do
    patch broker_url(@broker),
          params: { broker: { address: @broker.address, country: @broker.country, email: @broker.email, mc: @broker.mc,
                              name: @broker.name, phone: @broker.phone, usdot: @broker.usdot } }
    assert_redirected_to broker_url(@broker)
  end

  test 'should destroy broker' do
    assert_difference('Broker.count', -1) do
      delete broker_url(@broker)
    end

    assert_redirected_to brokers_url
  end
end

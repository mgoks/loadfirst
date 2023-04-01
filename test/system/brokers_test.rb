# frozen_string_literal: true

require 'application_system_test_case'

class BrokersTest < ApplicationSystemTestCase
  setup do
    @broker = brokers(:one)
  end

  test 'visiting the index' do
    visit brokers_url
    assert_selector 'h1', text: 'Brokers'
  end

  test 'should create broker' do
    visit brokers_url
    click_on 'New broker'

    fill_in 'Address', with: @broker.address
    fill_in 'Country', with: @broker.country
    fill_in 'Email', with: @broker.email
    fill_in 'Mc', with: @broker.mc
    fill_in 'Name', with: @broker.name
    fill_in 'Phone', with: @broker.phone
    fill_in 'Usdot', with: @broker.usdot
    click_on 'Create Broker'

    assert_text 'Broker was successfully created'
    click_on 'Back'
  end

  test 'should update Broker' do
    visit broker_url(@broker)
    click_on 'Edit this broker', match: :first

    fill_in 'Address', with: @broker.address
    fill_in 'Country', with: @broker.country
    fill_in 'Email', with: @broker.email
    fill_in 'Mc', with: @broker.mc
    fill_in 'Name', with: @broker.name
    fill_in 'Phone', with: @broker.phone
    fill_in 'Usdot', with: @broker.usdot
    click_on 'Update Broker'

    assert_text 'Broker was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Broker' do
    visit broker_url(@broker)
    click_on 'Destroy this broker', match: :first

    assert_text 'Broker was successfully destroyed'
  end
end

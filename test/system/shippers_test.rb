# frozen_string_literal: true

require 'application_system_test_case'

class ShippersTest < ApplicationSystemTestCase
  setup do
    @shipper = shippers(:one)
  end

  test 'visiting the index' do
    visit shippers_url
    assert_selector 'h1', text: 'Shippers'
  end

  test 'should create shipper' do
    visit shippers_url
    click_on 'New shipper'

    fill_in 'Address', with: @shipper.address
    fill_in 'Country', with: @shipper.country
    fill_in 'Email', with: @shipper.email
    fill_in 'Name', with: @shipper.name
    fill_in 'Phone', with: @shipper.phone
    click_on 'Create Shipper'

    assert_text 'Shipper was successfully created'
    click_on 'Back'
  end

  test 'should update Shipper' do
    visit shipper_url(@shipper)
    click_on 'Edit this shipper', match: :first

    fill_in 'Address', with: @shipper.address
    fill_in 'Country', with: @shipper.country
    fill_in 'Email', with: @shipper.email
    fill_in 'Name', with: @shipper.name
    fill_in 'Phone', with: @shipper.phone
    click_on 'Update Shipper'

    assert_text 'Shipper was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Shipper' do
    visit shipper_url(@shipper)
    click_on 'Destroy this shipper', match: :first

    assert_text 'Shipper was successfully destroyed'
  end
end

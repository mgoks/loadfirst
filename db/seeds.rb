# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values. The data can then be loaded with the bin/rails
# db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.delete_all
Order.delete_all
Broker.delete_all
Carrier.delete_all
Shipper.delete_all

Broker.create!(
  address: '975 Pacific Gate unit 18, Mississauga, ON L5T 1Y1',
  country: 0,
  email: 'Shipper@shipcurve.com',
  mc: '123456',
  name: 'ShipCurve',
  phone: '1234567890',
  usdot: '123456')
Carrier.create!(
  address: '620 Alden Road, Suite 105, Markham, Ontario,L3R 9R7',
  country: 0,
  email: 'info@littleguysdelivery.com',
  mc: '123456',
  name: 'Little Guys Delivery Inc',
  phone: '9055139602',
  usdot: '123456')
Shipper.create!(
  address: '5105M Fisher Street Saint-Laurent, QC  H4T 1J8 Canada',
  country: 0,
  email: 'someone@naturestouchfrozenfoods.com',
  name: 'Natures Touch Frozen Foods',
  phone: '9055139602')
Order.create!(
  carrier_id: Carrier.first.id,
  delivery_address: '5105M Fisher Street Saint-Laurent, QC  H4T 1J8 Canada',
  equipment_type: 0,
  orderer_id: Shipper.first.id,
  orderer_type: 'Shipper',
  pickup_date: '2023-05-01',
  pickup_address: '975 Pacific Gate unit 18, Mississauga, ON L5T 1Y1',
  status: 0)
User.create!(
  email: 'ash@shipcurve.com',
  name: 'Ash Singh',
  org_id: Broker.first.id,
  org_type: 'Broker',
  password: 'password',
  phone: '1234567890')

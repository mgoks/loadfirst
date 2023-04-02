# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_230_401_200_109) do
  create_table 'brokers', force: :cascade do |t|
    t.string 'address'
    t.integer 'country'
    t.string 'email'
    t.string 'mc'
    t.string 'name'
    t.string 'phone'
    t.string 'usdot'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'carriers', force: :cascade do |t|
    t.string 'address'
    t.integer 'country'
    t.string 'email'
    t.string 'mc'
    t.string 'name'
    t.string 'phone'
    t.string 'usdot'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'orders', force: :cascade do |t|
    t.integer 'carrier_id', null: false
    t.string 'delivery_address'
    t.integer 'equipment_type'
    t.string 'orderer_type', null: false
    t.integer 'orderer_id', null: false
    t.date 'pickup_date'
    t.string 'pickup_address'
    t.integer 'status'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['carrier_id'], name: 'index_orders_on_carrier_id'
    t.index %w[orderer_type orderer_id], name: 'index_orders_on_orderer'
  end

  create_table 'shippers', force: :cascade do |t|
    t.string 'address'
    t.integer 'country'
    t.string 'email'
    t.string 'name'
    t.string 'phone'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email'
    t.string 'name'
    t.string 'org_type', null: false
    t.integer 'org_id', null: false
    t.string 'password_digest'
    t.string 'phone'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[org_type org_id], name: 'index_users_on_org'
  end

  add_foreign_key 'orders', 'carriers'
end

# frozen_string_literal: true

json.extract! order, :id, :carrier_id, :delivery_address, :equipment_type, :orderer_id, :orderer_type, :pickup_date,
              :pickup_address, :status, :created_at, :updated_at
json.url order_url(order, format: :json)

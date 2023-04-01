# frozen_string_literal: true

json.extract! shipper, :id, :address, :country, :email, :name, :phone,
              :created_at, :updated_at
json.url shipper_url(shipper, format: :json)

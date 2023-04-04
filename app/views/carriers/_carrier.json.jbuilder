# frozen_string_literal: true

json.extract! carrier, :id, :address, :country, :email, :mc, :name, :phone,
              :usdot, :created_at, :updated_at
json.url carrier_url(carrier, format: :json)

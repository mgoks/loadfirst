json.extract! load, :id, :pickup_location, :delivery_location, :pickup_date, :equipment_type, :shipper_phone, :shipper_email, :created_at, :updated_at
json.url load_url(load, format: :json)

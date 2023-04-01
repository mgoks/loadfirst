# frozen_string_literal: true

json.array! @shippers, partial: 'shippers/shipper', as: :shipper

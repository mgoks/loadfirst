# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :carrier
  belongs_to :orderer, polymorphic: true

  validates :delivery_address,
            :equipment_type,
            :orderer_id,
            :orderer_type,
            :pickup_address,
            :pickup_date,
            :status,
            presence: true
end

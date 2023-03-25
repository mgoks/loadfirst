class Load < ApplicationRecord

  EQUIPMENT_TYPES = %w[dry_van reefer flat_deck].freeze

  validates :delivery_location,
            :pickup_date,
            :shipper_email,
            :shipper_phone,
            :pickup_location,
            presence: true

  validates :equipment_type, presence: true, inclusion: { 
    in: EQUIPMENT_TYPES, 
    message: "%{value} is not a valid equipment type. 
        Allowed types are #{EQUIPMENT_TYPES.join(', ')}." 
  }

end

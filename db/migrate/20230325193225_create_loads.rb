class CreateLoads < ActiveRecord::Migration[7.0]
  def change
    create_table :loads do |t|
      t.string :pickup_location
      t.string :delivery_location
      t.date :pickup_date
      t.string :equipment_type
      t.string :shipper_phone
      t.string :shipper_email

      t.timestamps
    end
  end
end

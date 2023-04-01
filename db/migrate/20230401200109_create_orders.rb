class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :carrier, null: false, foreign_key: true
      t.string :delivery_address
      t.integer :equipment_type
      t.references :orderer, polymorphic: true, null: false
      t.date :pickup_date
      t.string :pickup_address
      t.integer :status

      t.timestamps
    end
  end
end

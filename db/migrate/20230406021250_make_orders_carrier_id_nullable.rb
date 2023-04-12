# frozen_string_literal: true

class MakeOrdersCarrierIdNullable < ActiveRecord::Migration[7.0]
  def up
    change_column :orders, :carrier_id, :integer, null: true
  end

  def down
    change_column :orders, :carrier_id, :integer, null: false
  end
end

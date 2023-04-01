# frozen_string_literal: true

class CreateCarriers < ActiveRecord::Migration[7.0]
  def change
    create_table :carriers do |t|
      t.string :address
      t.integer :country
      t.string :email
      t.string :mc
      t.string :name
      t.string :phone
      t.string :usdot

      t.timestamps
    end
  end
end

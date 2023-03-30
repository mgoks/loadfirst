class CreateBrokers < ActiveRecord::Migration[7.0]
  def change
    create_table :brokers do |t|
      t.string :address # change hstore after migrating to postgres
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

class CreateShippers < ActiveRecord::Migration[7.0]
  def change
    create_table :shippers do |t|
      t.string :address
      t.integer :country
      t.string :email
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end

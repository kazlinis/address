class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :company
      t.string :title
      t.string :street_name
      t.string :city
      t.string :country
      t.integer :postal_code
      t.string :phone_number

      t.timestamps
    end
  end
end

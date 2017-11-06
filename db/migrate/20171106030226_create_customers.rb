class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :address
      t.string :city
      t.string :province
      t.string :country
      t.string :postal_code

      t.timestamps
    end
  end
end

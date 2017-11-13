class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.text :about
      t.string :title
      t.string :phone_number
      t.string :address
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :email

      t.timestamps
    end
  end
end

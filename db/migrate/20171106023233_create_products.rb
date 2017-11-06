class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :size
      t.string :condition
      t.decimal :price

      t.timestamps
    end
  end
end

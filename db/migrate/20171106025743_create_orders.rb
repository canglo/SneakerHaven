class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :status
      t.decimal :pst
      t.decimal :gst
      t.decimal :shipping_cost

      t.timestamps
    end
  end
end

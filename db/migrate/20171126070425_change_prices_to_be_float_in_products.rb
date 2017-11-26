class ChangePricesToBeFloatInProducts < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :price, :float
    change_column :orders, :shipping_cost, :float
    change_column :orders, :subtotal, :float
    change_column :orders, :total, :float
    change_column :line_items, :price, :float
    change_column :line_items, :total_price, :float

  end
end

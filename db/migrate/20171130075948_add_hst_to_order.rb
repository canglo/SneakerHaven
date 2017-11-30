class AddHstToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :hst, :decimal
  end
end

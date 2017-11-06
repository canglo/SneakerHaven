class RemoveConditionFromProduct < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :condition, :string
  end
end

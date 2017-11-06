ActiveAdmin.register Product do

permit_params :name, :description, :size, :price, :stock_quantity, :category_id,
              :condition_id

end

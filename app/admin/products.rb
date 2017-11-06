ActiveAdmin.register Product do

permit_params :name, :description, :size, :condition, :price, :stock_quantity, :category_id

end

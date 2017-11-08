ActiveAdmin.register Product do

permit_params :name, :description, :size, :price, :stock_quantity, :image, :category_id,
              :condition_id, :owner_id

end

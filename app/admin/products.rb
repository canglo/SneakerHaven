ActiveAdmin.register Product do

permit_params :name, :description, :size, :price, :stock_quantity, :image, :category_id,
              :condition_id, :owner_id

form do |f|
  f.inputs do
    f.input :owner_id, :as => :select, :collection => Owner.all.collect { |owner| [owner.email, owner.id] }
    f.input :name
    f.input :description
    f.input :category_id, :as => :select, :collection => Category.all.collect { |category| [category.name, category.id] }
    f.input :condition_id, :as => :select, :collection => Condition.all.collect { |condition| [condition.name, condition.id] }
    f.input :size
    f.input :price
    f.input :stock_quantity
    f.input :image
  end
  f.actions
end

end

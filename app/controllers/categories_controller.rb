class CategoriesController < ApplicationController

  def brand_category
    #@category = Category.find(params[:id])
    @products = Product.where(category_id: params[:id]).order(id: :desc).
                page(params[:page]).per(6)
  end
end

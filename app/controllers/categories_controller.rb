class CategoriesController < ApplicationController

  def brand_category
    @categories = Category.all
    @line_item = current_order.line_items.new

    @products = Product.where(category_id: params[:id]).order(id: :desc).
                page(params[:page]).per(6)

    @line_item = current_order.line_items.new

  end
end

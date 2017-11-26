class ProductsController < ApplicationController
  def index
    @categories = Category.all
    @products = Product.order(:name).page(params[:page]).per(6)
    @line_item = current_order.line_items.new
  end

  def show
    @product = Product.find(params[:id])
    @line_item = current_order.line_items.new
  end

  def search_results
    @categories = Category.all
    @line_item = current_order.line_items.new

    keywords = "%" + params[:search_keywords] + "%"

    if params[:categories] != ""
      @found_products = Product.where("name LIKE ?", keywords).where("category_id = ?", params[:categories]).page(params[:page]).per(6)
    else
      @found_products = Product.where("name LIKE ?", keywords).page(params[:page]).per(6)
    end
  end

  def new
    @categories = Category.all
    @new = Product.order("created_at DESC").page(params[:page]).per(6)
    @line_item = current_order.line_items.new
  end

  def recently_updated
    @categories = Category.all
    @updated = Product.order("updated_at DESC").page(params[:page]).per(6)
    @line_item = current_order.line_items.new
  end
end

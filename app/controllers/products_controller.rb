class ProductsController < ApplicationController
  def index
    @categories = Category.all
    @products = Product.order(:name).page(params[:page]).per(6)
  end

  def show
    @product = Product.find(params[:id])
  end

  def search_results
    @categories = Category.all
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
  end

  def recently_updated
    @categories = Category.all
    @updated = Product.order("updated_at DESC").page(params[:page]).per(6)
  end
end

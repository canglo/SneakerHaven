class ProductsController < ApplicationController
  def index
    @categories = Category.all
    @product = Product.order(:name).page(params[:page]).per(6)
  end

  def show
  end

  def search

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
end

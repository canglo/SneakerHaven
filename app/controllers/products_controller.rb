class ProductsController < ApplicationController
  def index
    @product = Product.order(:name).page(params[:page]).per(6)
  end

  def show
  end

  def search

  end

  def search_results
    keywords = "%" + params[:search_keywords] + "%"
    @found_products = Product.where("name LIKE ?", keywords).page(params[:page]).per(6)
  end
end

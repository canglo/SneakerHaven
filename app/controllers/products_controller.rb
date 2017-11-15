class ProductsController < ApplicationController
  def index
    @product = Product.order(:name).page(params[:page]).per(6)
  end

  def show
  end
end
